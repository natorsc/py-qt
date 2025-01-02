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

    RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: 'lightpink'
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: 'navajowhite'
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: 'darkseagreen'
        }
    }
}
