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

    Popup {
        id: popup

        height: 400
        // dim: true
        modal: true
        width: 400
        x: Math.round((parent.width - width) / 2)
        y: Math.round((parent.height - height) / 2)

        Overlay.modal: Rectangle {
            color: "#1EAACFDB"
        }
    }

    Button {
        anchors.centerIn: parent
        text: 'Click'

        onClicked: popup.open()
    }
}
