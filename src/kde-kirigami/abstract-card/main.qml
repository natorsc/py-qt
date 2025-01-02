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
        title: "KDE Kirigami"


    Kirigami.AbstractCard {
        anchors.left: parent.left
        anchors.margins: 12
        anchors.top: parent.top

        contentItem: Controls.Label {
            text: "Lorem Ipsum is simply..."
            wrapMode: Text.WordWrap
        }
        header: Kirigami.Heading {
            level: 2
            text: qsTr("AbstractCard")
        }
    }
}
}