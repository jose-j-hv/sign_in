import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Component{

    Rectangle{
        
        Rectangle{
            Image{
                sourceSize: QT.size(parent.width,parent.heiht)
                fillMode: Image.PreserveAspectCrop
                anchors.centerIn: parent
                source: "./images/fondo.jpg"
            }
        }

        ColumnLayout{
            anchors.centerIn:parent
            width: 240
            spacing: 24

            Text{
                Layout.fillWidth: true 
                text: "Logo"
                color: "white"
                font.pixelSize: 24 
                font.bold: true
                horizontalAlignment: Text.AlignHCenter 
                Layout.bottomMargin: 128 
            }

            CustTextField{
                placeholderText: "Email" 
            }

            CustTextField{
                placeholderText: "Password"
                echoMode: TextField.Password
            }
            Button{
                Layout.fillWidth: true
                text: "Sign in"
                
                background: Rectangle{
                    color: "transparent"
                }
                contentItem: Text{
                    text: parent.text
                    color: parent.hovered ? "#77ffffff" : "white"
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                }
                onClicked: 
                    stack.push(welcomePage)
            }
        }
    }
}