import QtQuick 2.0
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Item{
    width: 200
    height: 20
    property alias value: control.value
    property bool withShadow: false
    Slider {
        id: control
        value: 0.5
        anchors.fill: parent
        background: Rectangle {
            x: control.leftPadding
            y: control.topPadding + control.availableHeight / 2 - height / 2
            implicitWidth: 200
            implicitHeight: 4
            width: control.availableWidth
            height: implicitHeight
            radius: 2
            color: "#bdbebf"

            Rectangle {
                id: rect
                width: control.visualPosition * parent.width
                height: parent.height
                color: app.global_properties.purpleColor
                radius: 2
                Behavior on width{
                    NumberAnimation{duration: 70}
                }
                //Shadow
                layer.enabled: withShadow
                layer.effect: DropShadow {
                    anchors.fill: rect
                    horizontalOffset: 0
                    verticalOffset: 0
                    radius: 8
                    samples: 8
                    color: app.global_properties.purpleColor
                    source: rect
                }
            }

        }
        handle: Rectangle {
            x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
            y: control.topPadding + control.availableHeight / 2 - height / 2
            implicitWidth: 16
            implicitHeight: 16
            scale: control.hovered || control.pressed ? 1.3 : 1
            radius: 13
            color: control.pressed ? "#f0f0f0" : "#f6f6f6"
            border.color: app.global_properties.purpleColor
            border.width: 2
            Behavior on x{
                NumberAnimation{duration: 70}
            }
            Behavior on scale{
                NumberAnimation{duration: 100}
            }
        }
    }
}

