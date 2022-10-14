import QtQuick 2.0
import "../Objects"
import "../Delegates"

S_Rectangle {
    id: root
    width: 330
    height: parent.height
    S_Rectangle{
        id: line
        width: 2
        height: parent.height
        color: "#3B3F56"//app.global_properties.selectBackgroundColor
    }
    Component.onCompleted: {
        for(var i=0;i<20;i++)
        {
            playList_model.append({})
        }
    }

    ListView{
        id: playList
        anchors{fill:parent
            topMargin: 20
            leftMargin: 10}
        spacing: 10
        clip:true
        model: ListModel{id: playList_model}
        delegate: Playlist_Element{

        }
    }
}
