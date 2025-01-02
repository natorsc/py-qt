import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    height: 720
    minimumHeight: 640
    minimumWidth: 360
    title: qsTr('Python - PySide - Kirigami')
    visible: true
    width: 1280

    pageStack.initialPage: Kirigami.Page {
        title: "OverlayDrawer at the bottom"

        actions: [
            Kirigami.Action {
                text: "Open bottomDrawer"

                onTriggered: bottomDrawer.open()
            }
        ]

        Kirigami.OverlayDrawer {
            id: bottomDrawer

            drawerOpen: false
            edge: Qt.BottomEdge
            // modal: true not working.
            modal: false

            contentItem: RowLayout {
                Controls.Label {
                    Layout.fillWidth: true
                    text: "Say hello to my little drawer!"
                }

                Controls.Button {
                    text: qsTr("Close")

                    onClicked: bottomDrawer.close()
                }
            }
        }
    }
}
