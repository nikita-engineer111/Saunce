import QtQuick 2.0

Item {
    id: root
    width: 40
    height: 30
    property color color: "white"
    property alias mArea: mArea

    S_MouseArea{
        id: mArea
        onEntered: {
            color = app.global_properties.purpleColor
        }
        onExited: {
            color = "white"
        }
    }

    Triangle {
        id: tria2
        x: 11
        y: 0
        color: parent.color
    }

    Triangle{
        id: tria1
        x: 3
        y: 0
        color: parent.color
    }
}
