#include "mainwindow.h"

#include <KApplication>
#include <KAction>
#include <KLocale>
#include <KActionCollection>
#include <KStandardAction>
#include <KFileDialog>
#include <KMessageBox>
#include <KIO/NetAccess>
#include <KSaveFile>
#include <QTextStream>

MainWindow::MainWindow(QWidget *parent)
    : KXmlGuiWindow(parent),
      fileName(QString())
{
  textArea = new KTextEdit;
  setCentralWidget(textArea);

  setupActions();
}

void MainWindow::setupActions()
{
  KAction* clearAction = new KAction(this);
  clearAction->setText(i18n("Clear"));
  clearAction->setIcon(KIcon("document-close"));
  clearAction->setShortcut(Qt::CTRL + Qt::Key_W);
  actionCollection()->addAction("clear", clearAction);
  connect(clearAction, SIGNAL(triggered(bool)),
          textArea, SLOT(clear()));

  KStandardAction::quit(kapp, SLOT(quit()),
                        actionCollection());

  KStandardAction::open(this, SLOT(openFile()),
                        actionCollection());

  KStandardAction::save(this, SLOT(saveFile()),
                        actionCollection());

  KStandardAction::saveAs(this, SLOT(saveFileAs()),
                        actionCollection());

  KStandardAction::openNew(this, SLOT(newFile()),
                        actionCollection());

  setupGUI();
}

void MainWindow::newFile()
{
  fileName.clear();
  textArea->clear();
}

void MainWindow::saveFileAs(const QString &outputFileName)
{
  KSaveFile file(outputFileName);
  file.open();

  QByteArray outputByteArray;
  outputByteArray.append(textArea->toPlainText());
  file.write(outputByteArray);
  file.finalize();
  file.close();

  fileName = outputFileName;
}

void MainWindow::saveFileAs()
{
  saveFileAs(KFileDialog::getSaveFileName());
}

void MainWindow::saveFile()
{
  if(!fileName.isEmpty())
  {
    saveFileAs(fileName);
  }
  else
  {
    saveFileAs();
  }
}

void MainWindow::openFile()
{
  openFile(KFileDialog::getOpenFileName());
}

void MainWindow::openFile(const QString &inputFileName)
{
  QString tmpFile;
  if(KIO::NetAccess::download(inputFileName, tmpFile,
         this))
  {
    QFile file(tmpFile);
    file.open(QIODevice::ReadOnly);
    textArea->setPlainText(QTextStream(&file).readAll());
    fileName = inputFileName;

    KIO::NetAccess::removeTempFile(tmpFile);
  }
  else
  {
    KMessageBox::error(this,
        KIO::NetAccess::lastErrorString());
  }
}
