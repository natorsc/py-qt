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

    Column {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        GroupBox {
            title: qsTr('Synchronize')

            Column {
                CheckBox {
                    text: qsTr('Item 01')
                }

                CheckBox {
                    text: qsTr('Item 02')
                }

                CheckBox {
                    text: qsTr('Item 03')
                }
            }
        }
    }
}
