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

    footer: Controls.TabBar {
    }
    header: Controls.ToolBar {
    }
    menuBar: Controls.MenuBar {
    }
    pageStack.initialPage: Kirigami.Page {
            title: "KDE Kirigami"
    }
}
