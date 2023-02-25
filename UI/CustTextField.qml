import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.5


TextField{
    Layout.fillWidth: true
    placeholderText: "Email"
    color: "white"
    font.pixelSize: 12
    horizontalAlignment: Text.AlignHCenter

    background: Rectangle{
        color: "transparent"

        Rectangle{
            anchors.bottom: parent.bottom
            width: parent.width
            height: 1
            color: "#77ffffff"
        }
    }
}