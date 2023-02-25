import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow{
    visible: true
    width: 640
    height: 512
    title: "Sign In"

    property string username: "Jose"

    StackView{
        id: stack
        anchors.fill: parent
        initialItem: SignInPage{}
    }

    WelcomePage{
        id:welcomePage;
    }
}