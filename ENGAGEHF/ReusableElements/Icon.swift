//
// This source file is part of the ADOPT-HF project based on the Stanford Spezi Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct Icon: View {
    var body: some View {
        Image(.engagehfIcon)
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
