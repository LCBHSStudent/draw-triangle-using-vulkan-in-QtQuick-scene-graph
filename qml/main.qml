import QtQuick 2.14
import QtQuick.Controls 2.14

import VulkanBackend 1.14

Item {
    id:         root
    width:      1280
    height:     720

    VulkanScene {
        id: vkScene
        anchors.centerIn: parent
        width: 700
        height: 700
        
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("rectangle!");
            }
        }
    }
    
    Slider {
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 20
        }
        width: parent.width / 2
        height: 20
        onValueChanged: {
            vkScene.value = value
        }
    }
    
    Timer {
        running: true
        repeat: true
        interval: 1000/60
        onTriggered: {
            update()
            console.log("update")
        }
    }
}
