import QtQuick 2.0

Item {
    id: root
    width: 240
    height: 30
    Button_Image{
        id: sounding
        width: 26
        height: 26
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/source/Item/sound.png"
        replaceSource: "qrc:/source/Item/sound_purple.png"
        mArea.onClicked: {
            if(audio_volume.value>0)
            {
                audio_volume.lastValue = audio_volume.value
                audio_volume.value = 0
                source = "qrc:/source/Item/no_sound_purple.png"
                replaceSource = "qrc:/source/Item/no_sound_purple.png"
                defaultSource = "qrc:/source/Item/no_sound.png"
            }
            else{
                audio_volume.value = audio_volume.lastValue
                source = "qrc:/source/Item/sound_purple.png"
                replaceSource = "qrc:/source/Item/sound_purple.png"
                defaultSource = "qrc:/source/Item/sound.png"
            }
        }
    }
    S_Text{
        id: text_percent
        y: 4
        text: int_value+"%"
        property int int_value: audio_volume.value*100
        anchors.left: sounding.right
        anchors.leftMargin: 10
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    S_Slider{
        id: audio_volume
        x: 89
        y: 0
        width: 147
        height: 20
        value: 1
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        property double lastValue: 1.0
        onValueChanged: {
            if(value>0){
                sounding.source = "qrc:/source/Item/sound.png"
                sounding.replaceSource = "qrc:/source/Item/sound_purple.png"
                sounding.defaultSource = "qrc:/source/Item/sound.png"
            }
            else{
                sounding.source = "qrc:/source/Item/no_sound.png"
                sounding.replaceSource = "qrc:/source/Item/no_sound_purple.png"
                sounding.defaultSource = "qrc:/source/Item/no_sound.png"
            }
        }
    }
}
