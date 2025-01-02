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

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: `Selected: ${fileDialog.file}`
        }

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: 'Open'

            onClicked: {
                fileDialog.open();
            }
        }

        Labs.FileDialog {
            id: fileDialog

            folder: Labs.StandardPaths.writableLocation(Labs.StandardPaths.HomeLocation)
            nameFilters: ['Text files (*.txt)', 'HTML files (*.html *.htm)', 'All (*.*)']
        }
    }
}
