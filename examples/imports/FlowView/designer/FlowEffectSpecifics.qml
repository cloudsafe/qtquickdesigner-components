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
import QtGraphicalEffects 1.1
import StudioTheme 1.0 as StudioTheme

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Transition Effect")

        SectionLayout {
            rows: 2
            columns: 2

            Label {
                text: qsTr("duration")
                tooltip: qsTr("Sets the duration of the effect")
            }
            SpinBox {
                backendValue: backendValues.duration
                maximumValue: 10000
                minimumValue: 0
            }
            Label {
                text: "Easing Curve"
            }
            Item {
                height: StudioTheme.Values.squareComponentWidth
                width: height * 2
                AbstractButton {
                    id: button
                    x: StudioTheme.Values.squareComponentWidth
                    onClicked: easingCurveEditor.runDialog()
                    //buttonIcon: ":/timelineplugin/images/curve_editor.png"
                    tooltip: qsTr("Anchor item to the top.")

                    EasingCurveEditor {
                        id: easingCurveEditor

                        modelNodeBackendProperty: modelNodeBackend
                    }

                    Image {
                        id: mask
                        source: "qrc:///timelineplugin/images/curve_editor.png"
                        visible: false
                        anchors.centerIn: parent
                    }

                    Rectangle {
                        id: rect
                        anchors.fill: mask

                        visible: false
                    }


                    Blend  {
                        id: blend
                        anchors.fill: mask
                        source: mask
                        foregroundSource: rect
                        mode: "negation"
                        opacity: button.hovered ? 1 : 0.9
                    }

                }
            }
        }
    }
}
