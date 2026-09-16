//
// This source file is part of the ADOPT-HF iOS open-source project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct Icon: View {
    var body: some View {
        Image(.adopthfIcon)
            .resizable()
            .scaledToFit()
            .frame(width: 128, height: 128)
            .clipShape(RoundedRectangle(cornerRadius: 32))
            .accessibilityLabel("ADOPT-HF Icon")
    }
}


#Preview {
    Icon()
}
