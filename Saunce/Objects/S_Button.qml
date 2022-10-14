import QtQuick 2.0
import QtQuick.Controls 2.12

Button {
    id: root
    width: 200
    height: 26
    hoverEnabled: true
    property alias title: title.text
    property alias backgroundRect: backgroundRect
    background: S_Rectangle{
        id: backgroundRect
        anchors.fill: parent
        color: app.global_properties.backgroundColor
        border.color: root.hovered ? app.global_properties.purpleColor : app.global_properties.selectBackgroundColor
        border.width: 1.3
        radius: 20
        Behavior on border.color {
            ColorAnimation{duration: 100}
        }
    }

    contentItem: S_Text{
        id: title
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
    }
}
