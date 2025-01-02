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

    globalDrawer: Kirigami.GlobalDrawer {
        title: "Global Drawer"
        titleIcon: "applications-graphics"

        actions: [
            Kirigami.Action {
                icon.name: "user-home-symbolic"
                text: "Kirigami Action 1"

                onTriggered: showPassiveNotification("Action 1 clicked")
            },
            Kirigami.Action {
                icon.name: "settings-configure-symbolic"
                text: "Kirigami Action 2"

                onTriggered: showPassiveNotification("Action 2 clicked")
            },
            Kirigami.Action {
                icon.name: "application-exit-symbolic"
                shortcut: StandardKey.Quit
                text: qsTr("Quit")

                onTriggered: Qt.quit()
            }
        ]
    }
    pageStack.initialPage: Kirigami.Page {
    }
}
