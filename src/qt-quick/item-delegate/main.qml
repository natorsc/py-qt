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

        ListView {
            id: listView

            Layout.fillHeight: true
            Layout.fillWidth: true
            model: Qt.fontFamilies()

            ScrollIndicator.vertical: ScrollIndicator {
            }
            delegate: ItemDelegate {
                required property int index
                required property string modelData

                highlighted: ListView.isCurrentItem
                text: modelData

                onClicked: {
                    listView.currentIndex = index;
                    console.log(`index: ${index}`);
                    console.log(`modelData: ${modelData}`);
                }
            }
        }
    }
}
