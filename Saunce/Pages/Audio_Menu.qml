import QtQuick 2.0
import QtMultimedia 5.8
import "../Objects"

S_Rectangle {
    id: root
    width: 880
    height: 100
    //color: "black"
    S_Slider{
        id: audio_slider
        value: value100/100
        property int value100: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        withShadow: true
    }
    S_Text{
        id: audio_name
        text: "Ghostemane & Pouya - Cyanide"
        anchors.top: audio_slider.bottom
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 8
    }

    Button_Next_Song{
        id: previous_song
        x: 8
        y: 55
        rotation: -180
    }
    Button_Play{
        id: button_audio_play
        x: 45
        y: 55

    }
    Button_Next_Song{
        id: next_song
        x: 74
        y: 55
    }
    Button_Image{
        id: button_audio_repeat
        x: 120
        y: 55
        scale: 0.7
        source: "qrc:/source/Item/repeater.png"
        replaceSource: "qrc:/source/Item/repeater.png"
        mArea.onClicked: {
            if(audio.loops !== Audio.Infinite)
            {
                audio.loops = Audio.Infinite
                source = "qrc:/source/Item/repeater_purple.png"
                defaultSource = "qrc:/source/Item/repeater_purple.png"
                replaceSource = "qrc:/source/Item/repeater_purple.png"
            }
            else{
                audio.loops = 0
                source = "qrc:/source/Item/repeater.png"
                defaultSource = "qrc:/source/Item/repeater.png"
                replaceSource = "qrc:/source/Item/repeater.png"
            }
        }
    }

    Button_Image{
        id: button_heart
        x: 199
        y: 55
        source: "qrc:/source/Item/heart.png"
        replaceSource: source
        property bool liked: false
        scale: 0.7
        mArea.onClicked: {
            if(liked){
                liked=false
                source = "qrc:/source/Item/heart.png"
                replaceSource = "qrc:/source/Item/heart.png"
                defaultSource = "qrc:/source/Item/heart.png"
            }else{
                liked=true
                source="qrc:/source/Item/heart_purple.png"
                replaceSource="qrc:/source/Item/heart_purple.png"
                defaultSource="qrc:/source/Item/heart_purple.png"
            }
        }
    }
    Button_Plus{
        id: button_add_to_playlist
        x: 235
        y: 55
        scale: 0.8
    }

    Button_Image{
        id: button_dowload
        x: 271
        y: 55
        source: "qrc:/source/Item/download.png"
        replaceSource: "qrc:/source/Item/download_purple.png"
        scale: 0.8
    }

    Button_Sound_Volume{
        id: button_Sound_Volume
        x: 632
        y: 55
        anchors.right: parent.right
        anchors.rightMargin: 8
    }

}
