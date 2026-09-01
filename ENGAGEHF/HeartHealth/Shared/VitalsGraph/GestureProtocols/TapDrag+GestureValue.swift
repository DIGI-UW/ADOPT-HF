//
// This source file is part of the ADOPT-HF iOS open-source project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Foundation
import SwiftUI


extension SpatialTapGesture.Value: GestureValue {
    var eventLocation: CGPoint {
        self.location
    }
}


extension DragGesture.Value: GestureValue {
    var eventLocation: CGPoint {
        self.location
    }
}
