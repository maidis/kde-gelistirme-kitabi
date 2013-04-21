#include <KApplication>
#include <KAboutData>
#include <KCmdLineArgs>
#include <KLocale>

#include "mainwindow.h"

int main (int argc, char *argv[])
{
  KAboutData aboutData( "tutorial2", 0,
      ki18n("Tutorial 2"), "1.0",
      ki18n("A simple text area"),
      KAboutData::License_GPL,
      ki18n("Copyright (c) 2013 Developer") );
  KCmdLineArgs::init( argc, argv, &aboutData );

  KApplication app;

  MainWindow* window = new MainWindow();
  window->show();

  return app.exec();
}
