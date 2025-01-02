import QtCharts
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

    ChartView {
        id: chart

        anchors.fill: parent
        antialiasing: true
        legend.alignment: Qt.AlignBottom
        title: "Stacked Bar Chart"

        StackedBarSeries {
            axisX: BarCategoryAxis {
                categories: ["2007", "2008", "2009", "2010", "2011", "2012"]
            }

            BarSet {
                label: "Bob"
                values: [2, 2, 3, 4, 5, 6]
            }

            BarSet {
                label: "Susan"
                values: [5, 1, 2, 4, 1, 7]
            }

            BarSet {
                label: "James"
                values: [3, 5, 8, 13, 5, 8]
            }
        }
    }
}
