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

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: qsTr('This text will be changed.')
        }

        TextField {
            Layout.fillWidth: true
            placeholderText: qsTr("Type something.")
        }

        Button {
            Layout.fillWidth: true
            text: qsTr("Click here")

            onClicked: console.log('Clicked')
        }
    }
}
