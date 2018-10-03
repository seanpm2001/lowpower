import QtQuick 2.4
import QtCharts 2.2

Item {
    property variant designator: ["X °", "Y °", "Z °"]

    property alias xAxis: xAxis
    property alias yAxis: yAxis
    property alias zAxis: zAxis

    property int depth: 101
    property bool openGL: false;

    ChartView {

        anchors.fill: parent
        backgroundColor: "transparent"
        theme: ChartView.ChartThemeDark

        legend.visible: false

        ValueAxis {
            id: axisX
            min: 0
            max: depth
            tickCount: 0
            gridVisible: false
        }

        ValueAxis {
            id: axisY
            min: -80.0
            max: 80.0
        }

        LineSeries {
            id: xAxis
            axisX: axisX
            axisY: axisY
            color: "#94c840"
            useOpenGL: openGL
        }

        LineSeries {
            id: yAxis
            axisX: axisX
            axisY: axisY
            color: "#065793"
            useOpenGL: openGL
        }

        LineSeries {
            id: zAxis
            axisX: axisX
            axisY: axisY
            color: "#f15f25"
            useOpenGL: openGL
        }
    }
}
