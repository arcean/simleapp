import QtQuick 1.1
import com.meego 1.0
import Canvas 1.0

Page {

    tools: commonTools

    orientationLock: PageOrientation.LockLandscape


        Drawing {
            id:canvas
            anchors.fill: parent
        }

        function clear() {
            canvas.clear();
        }

        function setTool(tool) {
            canvas.setTool(tool);
        }

        function setCanvasColor(color) {
            canvas.drawColor = color;
        }
}
