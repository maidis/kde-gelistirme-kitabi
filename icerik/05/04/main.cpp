#include <KApplication>
#include <KAboutData>
#include <KCmdLineArgs>
#include <KUrl>

#include "mainwindow.h"

int main (int argc, char *argv[])
{
  KAboutData aboutData( "tutorial5", "tutorial5",
      ki18n("Tutorial 5"), "1.0",
      ki18n("A simple text area which can load and save."),
      KAboutData::License_GPL,
      ki18n("Copyright (c) 2013 Developer") );
  KCmdLineArgs::init( argc, argv, &aboutData );

  KCmdLineOptions options;
  options.add("+[file]", ki18n("Document to open"));
  KCmdLineArgs::addCmdLineOptions(options);

  KApplication app;

  MainWindow* window = new MainWindow();
  window->show();

  KCmdLineArgs *args = KCmdLineArgs::parsedArgs();
  if(args->count())
  {
    window->openFile(args->url(0).url());
  }

  return app.exec();
}
