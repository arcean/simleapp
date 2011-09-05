import QtQuick 1.1
import com.meego 1.0

Dialog {
    id: dialog
    anchors.centerIn: parent
    title: [
        Item {
            height: dialog.platformStyle.titleBarHeight
            width: parent.width
            Label {
                anchors.left: supplement.right
                font.capitalization: Font.MixedCase
                color: "white"
                text: "Generic Dialog"
            }
        }
    ]
    content: [
        Item {
            height: dialog.platformStyle.titleBarHeight
            width: parent.width
            Grid {
                    id: colorPicker
                    rows: 2; columns: 7; spacing: 20

                Repeater {
                    model: ["black","firebrick", "orange", "gold", "purple", "steelblue", "seagreen", "white","grey", "yellow", "pink", "cyan", "magenta", "lightgreen"]
                    ColorButton { color: modelData }
                }
            }

        }
    ]
    /*
    buttons: ButtonRow {
        platformStyle: ButtonStyle { }
        anchors.horizontalCenter: parent.horizontalCenter
        Button {id: b1; text: "Select"; onClicked: dialog.accept()}
        Button {id: b2; text: "Cancel"; onClicked: dialog.reject()}
    }*/
}
