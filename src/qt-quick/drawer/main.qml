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

    header: ToolBar {
        RowLayout {
            anchors.fill: parent

            ToolButton {
                id: toolButton

                // icon.name: 'sidebar-expand'
                icon.name: 'sidebar-expand-symbolic' | 'edit-cut'
                text: '⋮'

                // icon.name: 'sidebar-expand-symbolic' | 'go-top'

                // icon.name: 'sidebar-expand-left'
                // icon.name: 'sidebar-expand-left-symbolic'
                onClicked: {
                    let activated = drawer.position == 1 ? false : true;
                    let iconName = activated ? 'sidebar-collapse' : 'sidebar-expand';
                    drawer.visible = activated;
                    toolButton.highlighted = activated;
                    toolButton.icon.name = iconName;
                }
            }
        }
    }

    Drawer {
        id: drawer

        height: root.height - header.height
        width: root.width * 0.6
        y: header.height
    }

    Label {
        id: label

        anchors.fill: parent
        font.pixelSize: 96
        horizontalAlignment: Label.AlignHCenter
        text: 'Aa'
        verticalAlignment: Label.AlignVCenter

        transform: Translate {
            x: drawer.position * label.width * 0.33
        }
    }
}
