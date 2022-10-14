import QtQuick 2.0

Image {
    id: root
    width: 30
    height: 30
    property string defaultSource
    property string replaceSource
    property alias mArea: mArea
    Component.onCompleted: defaultSource = source

    S_MouseArea{
        id: mArea
        onEntered: root.source = replaceSource
        onExited: root.source = defaultSource
    }
}
