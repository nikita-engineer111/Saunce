import QtQuick 2.0
import "../Objects"

S_Rectangle {
    id: root
    width: 320
    height: 40
    Behavior on color{
        ColorAnimation{duration: 100}
    }

    S_MouseArea{
        id: mArea
        onEntered: root.color = app.global_properties.selectBackgroundColor
        onExited: root.color = app.global_properties.backgroundColor


    }
    property alias a_duration: audio_duration.text
    S_Text {
        id: audio_duration
        x: 238
        y: 11
        width: 84
        height: 18
        text: "00:00"
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.verticalCenter: parent.verticalCenter
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 14
    }
    S_Rectangle{
        width: 36
        height: width
        radius: width
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 6
        color: Qt.rgba(Math.random(), Math.random(), Math.random(), 100)
    }
    property alias a_name: audio_name
    S_Text{
        id: audio_name
        y: 11
        width: 176
        height: 18
        anchors.left: parent.left
        anchors.leftMargin: 48
        anchors.verticalCenter: parent.verticalCenter
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
    }
}
