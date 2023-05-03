import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.15


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Gauge")



    Slider{
        id: slider_1
        x: 70
        y: 400

        from: -50
        to: 50
        value: 0

    }

    CircularGauge {
        id: circleGauge
        x: 60
        y: 100
        width: 149
        height: 136
        minimumValue: -50
        value: slider_1.value
        maximumValue: 50
        style: CircularGaugeStyle {
            labelInset: outerRadius * -0.2
            tickmarkLabel: Text {
                font.pixelSize: Math.max(6, outerRadius * 0.2)
                text: styleData.value
                color: styleData.value >=  0 ?
                           "#e34c22" : "#2505f5" < 0 ? "#031ce2" : "#0545e5"
                antialiasing: true
            }
        }
    }

    Gauge {
        id: gauge
        x: 400
        y: 100
        minimumValue: -50
        value: slider_1.value
        maximumValue: 50

        style: GaugeStyle {
            tickmarkLabel: Text {
                font.pixelSize: Math.max(6, outerRadius * 0.2)
                text: styleData.value
                color: styleData.value >=  0 ?
                           "#e34c22" : "#2505f5" < 0 ? "#031ce2" : "#0545e5"
                antialiasing: true
            }
        }
    }
}
