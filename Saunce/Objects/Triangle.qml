import QtQuick 2.0

Item{
    id: itemTriangle
    width: 30
    height: 30
    property color color: "white"
    Behavior on color{
        ColorAnimation{duration: 100}
    }

    Rectangle{
        id: triangle
        x: 6
        y: 8
        width: 14
        height: 14
        rotation: 45
        radius: 2
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: -2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        clip: true
        color: itemTriangle.color

    }
    Rectangle{
        id: rectTria
        x: 5
        y: 59
        color: app.global_properties.backgroundColor
        width: 6
        height: 19
        radius: 0
        anchors.verticalCenterOffset: 1
        anchors.verticalCenter: parent.verticalCenter
        smooth: true
    }

    Rectangle {
        id: rectangle
        x: 2
        y: 12
        width: 4
        height: 8
        color: app.global_properties.backgroundColor
    }
}

