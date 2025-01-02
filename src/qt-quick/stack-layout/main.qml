import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    height: 540
    minimumHeight: 360
    minimumWidth: 640
    title: qsTr('Python - PySide6 - Qt')
    visible: true
    width: 960
    x: 40
    y: 50

    StackLayout {
        id: stackLayout

        anchors.fill: parent
        currentIndex: 0

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: 'lightpink'

            Button {
                anchors.centerIn: parent
                text: 'Go to index = 1'

                onClicked: stackLayout.currentIndex = 1
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: 'navajowhite'

            Button {
                anchors.centerIn: parent
                text: 'Go to index = 0'

                onClicked: stackLayout.currentIndex = 0
            }
        }
    }
}
