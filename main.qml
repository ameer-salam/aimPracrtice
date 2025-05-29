import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.0

Window {
    visible: true
    minimumWidth: 640
    minimumHeight: 480
    title: qsTr("aimPractice : setup window")

    Column{
        id: _optionColumn
        spacing: 35
        anchors.centerIn: parent

        Text{
            text: "Welcome to AimPractice"
            font.pixelSize: 30
            font.bold: true
        }

        Row{
            id: _levelSelectionRow
            spacing: 230

            Text{
                text: "Select difficulty of speed"
                font.pixelSize: 15
                font.bold: true
            }

            SpinBox{
                objectName: "_timerDifficulty"
                id: _levelSelection
                stepSize: 1
                minimumValue: 1
                maximumValue: 3
                width: 100
                font.pixelSize: 20
            }
        }

        Row{
            id: _targetSizeRow
            spacing: 20

            Text{
                text: "Select Size of Targets (Lower means High Difficulty)"
                font.pixelSize: 15
                font.bold: true
            }

            SpinBox{
                objectName: "_targetSize"
                id: _targetSize
                stepSize: 1
                minimumValue: 1
                maximumValue: 3
                width: 100
                font.pixelSize: 20
            }
        }

        Button{
            id: _startWindowButton
            height: 100
            width: 200
            Text{
                text: "Start"
                font.bold: true
                font.pixelSize: 18
                anchors.centerIn: parent
            }

            onClicked: {
                welcomeWindow.getDifficulty(_levelSelection.value, _targetSize.value)
            }
        }
    }
}
