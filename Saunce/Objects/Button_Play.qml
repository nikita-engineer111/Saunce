import QtQuick 2.0

Rectangle{
    id: root
    width: 30
    height: 30
    color: app.global_properties.backgroundColor
    radius: 30
    property bool playing: false
    property alias mArea: mArea
    Behavior on scale{
        NumberAnimation{duration: 100}
    }
    function click()
    {
        if(playing)
            playing = false

        else
            playing = true
    }
    function enter()
    {
        mArea.cursorShape = Qt.PointingHandCursor
        itemTriangle.color = app.global_properties.purpleColor
    }
    function exit()
    {
        mArea.cursorShape = Qt.ArrowCursor
        itemTriangle.color = "white"
    }

    S_MouseArea{
        id: mArea
        onEntered: enter()
        onExited: exit()
        onClicked: click()
    }

    Item{
        id: itemTriangle
        anchors.fill: parent
        visible: playing==false
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
            color: root.color
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
            color: root.color
        }
    }

    Item{
        id: itemPause
        anchors.fill: parent
        visible: playing
        property color color: app.global_properties.purpleColor
        Rectangle {
            id: rect1
            x: 8
            y: 7
            width: 6
            height: 14
            color: itemPause.color
            radius: 6
            anchors.verticalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
        }

        Rectangle {
            id: rect2
            x: 16
            y: 7
            width: 6
            height: 14
            color: itemPause.color
            radius: 6
            anchors.verticalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
        }
    }

}


