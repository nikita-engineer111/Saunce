import QtQuick 2.0

MouseArea {
    id: root
    anchors.fill: parent
    hoverEnabled: true
    onEntered: cursorShape = Qt.PointingHandCursor
    onExited: cursorShape = Qt.ArrowCursor
}
