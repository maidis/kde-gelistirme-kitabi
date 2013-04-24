#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <KXmlGuiWindow>
#include <KTextEdit>

class MainWindow : public KXmlGuiWindow
{
  Q_OBJECT

  public:
    MainWindow(QWidget *parent=0);

  private:
    KTextEdit* textArea;
    void setupActions();
    QString fileName;

  private slots:
    void newFile();
    void openFile();
    void saveFile();
    void saveFileAs();
    void saveFileAs(const QString &outputFileName);
};

#endif
