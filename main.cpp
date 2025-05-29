#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>

#include "setupwindow.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    setupWindow firstWindow;

    QQuickView *welcomeWindow = new QQuickView; //creates an object of QQuickView to be viewed for settings

    welcomeWindow->setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    welcomeWindow->rootContext()->setContextProperty("welcomeWindow", &firstWindow);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
