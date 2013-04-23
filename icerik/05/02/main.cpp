#include <KApplication>
#include <KAboutData>
#include <KCmdLineArgs>

#include "mainwindow.h"

int main (int argc, char *argv[])
{
  KAboutData aboutData( "tutorial3", "tutorial3",
      ki18n("Tutorial 3"), "1.0",
      ki18n("A simple text area using KAction etc."),
      KAboutData::License_GPL,
      ki18n("Copyright (c) 2013 Developer") );
  KCmdLineArgs::init( argc, argv, &aboutData );
  KApplication app;

  MainWindow* window = new MainWindow();
  window->show();
  return app.exec();
}
