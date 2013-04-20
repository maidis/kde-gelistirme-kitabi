#include <cstdlib>

#include <KApplication>
#include <KAboutData>
#include <KCmdLineArgs>
#include <KMessageBox>
#include <KLocale>

int main (int argc, char *argv[])
{
    KAboutData aboutData(
                         // The program name used internally.
                         "tutorial1",
                         // The message catalog name
                         // If null, program name is used instead.
                         0,
                         // A displayable program name string.
                         ki18n("Tutorial 1"),
                         // The program version string.
                         "1.0",
                         // Short description of what the app does.
                         ki18n("Displays a KMessageBox popup"),
                         // The license this code is released under
                         KAboutData::License_GPL,
                         // Copyright Statement
                         ki18n("(c) 2013"),
                         // Optional text shown in the About box.
                         // Can contain any information desired.
                         ki18n("Some text..."),
                         // The program homepage string.
                         "http://example.com/",
                         // The bug report email address
                         "submit@bugs.kde.org");

    KCmdLineArgs::init( argc, argv, &aboutData );
    KApplication app;
    KGuiItem yesButton( i18n( "Hello" ), QString(),
                        i18n( "This is a tooltip" ),
                        i18n( "This is a WhatsThis help text." ) );
    return
        KMessageBox ::questionYesNo
        (0, i18n( "Hello World" ), i18n( "Hello" ), yesButton )
        == KMessageBox ::Yes? EXIT_SUCCESS: EXIT_FAILURE;
}
