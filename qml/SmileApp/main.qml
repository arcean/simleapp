import QtQuick 1.1
import com.meego 1.0

PageStackWindow {
    id: appWindow
    initialPage: mainPage
    showToolBar: true

    MainPage {
        id: mainPage
    }

    ColorPicker {
        id: colorPicker
    }

    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon {
            platformIconId: "toolbar-pages-all"
            onClicked: {
                colorPicker.open();
            }
        }

        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status == DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }

    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem {
                text: qsTr("Clear")
                onClicked:
                    mainPage.clear();
            }
            MenuItem {
                text: qsTr("Line")
                onClicked:
                    mainPage.setTool(0);
            }
            MenuItem {
                text: qsTr("Rectangle")
                onClicked:
                    mainPage.setTool(1);
            }
            MenuItem { text: qsTr("Line 3") }
        }
    }

    function setCanvasColor(color) {
        mainPage.setCanvasColor(color);
    }
}
