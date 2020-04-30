/****************************************************************************
**
** Copyright (C) 2020 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Designer Components.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.1
import HelperWidgets 2.0
import QtQuick.Layouts 1.0

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Flow View")

        SectionLayout {
            rows: 1
            columns: 2

            Label {
                text: qsTr("Current Index")
                tooltip: qsTr("Current Index of the FlowView")
            }
            SpinBox {
                backendValue: backendValues.currentIndex__AUX
                maximumValue: 22
                minimumValue: 1
            }

        }
    }

    Section {
        visible: !anchorBackend.hasParent
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Transition Color")

        ColorEditor {
            backendValue: backendValues.transitionColor__AUX
            supportGradient: false
        }
    }
    Section {
        visible: !anchorBackend.hasParent
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Area Outline Color")

        ColorEditor {
            backendValue: backendValues.areaColor__AUX
            supportGradient: false
        }
    }
    Section {
        visible: !anchorBackend.hasParent
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Area Fill Color")

        ColorEditor {
            backendValue: backendValues.areaFillColor__AUX
            supportGradient: false
        }
    }
    Section {
        visible: !anchorBackend.hasParent
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Block Item Color")

        ColorEditor {
            backendValue: backendValues.blockColor__AUX
            supportGradient: false
        }
    }
    Section {
        visible: !anchorBackend.hasParent
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Flow View Parameters")

        SectionLayout {
            rows: 1
            Label {
                text: qsTr("Transition Radius")
                tooltip: qsTr("The corner radius of the transitions")
            }
            SpinBox {
                backendValue: backendValues.transitionRadius__AUX
                minimumValue: 0
                maximumValue: 150
            }
        }
    }
}
