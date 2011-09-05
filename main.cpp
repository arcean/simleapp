#include <QtGui/QApplication>
#include <QtDeclarative>

#include "canvas.h"
#include "canvastimer.h"
#include "context2d.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<Canvas>("Canvas", 1, 0, "Canvas");
    qmlRegisterType<Context2D>("Context2D", 1, 0, "Context2D");
    qmlRegisterUncreatableType<CanvasImage>("CanvasImage", 1, 0, "CanvasImage", QString());
    qmlRegisterUncreatableType<CanvasGradient>("Gradient", 1, 0, "Gradient", QString());


    QDeclarativeView view;
    view.setSource(QUrl("qrc:qml/SmileApp/main.qml"));
    view.showFullScreen();

    return app.exec();
}
