import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.platform as Labs

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

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: 'Open'

            onClicked: {
                messageDialog.open();
            }
        }

        Labs.MessageDialog {
            id: messageDialog

            buttons: Labs.MessageDialog.Ok | Labs.MessageDialog.Cancel
            informativeText: 'Do you want to save your changes?'
            text: 'The document has been modified.'

            onAccepted: console.log('Accepted')
        }
    }
}
