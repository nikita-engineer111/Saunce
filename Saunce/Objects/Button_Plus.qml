import QtQuick 2.0

S_Rectangle {
    id: root
    width: 30
    height: 30
    color: app.global_properties.backgroundColor
    radius: 30
    property alias mArea: mArea
    S_MouseArea{
        id: mArea
        onEntered: rect1.color = app.global_properties.purpleColor
        onExited: rect1.color = "white"
    }

    S_Rectangle{
        id: rect1
        x: 8
        y: 5
        width: 6
        height: 20
        radius: 6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "white"
        Behavior on color {
            ColorAnimation{duration: 100}
        }
    }
    S_Rectangle{
        id: rect2
        width: 20
        height: 6
        radius: 6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: rect1.color
    }

}
