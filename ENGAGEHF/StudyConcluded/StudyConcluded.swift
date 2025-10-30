//
// This source file is part of the ADOPT-HF project based on the Stanford Spezi Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

@_spi(TestingSupport) import SpeziAccount
import SwiftUI


struct StudyConcluded: View {
    @Binding var presentingAccount: Bool
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 16) {
                Icon()
                    .padding()
                Text("Thank you for participating in the\nADOPT-HF study!")
                Text("Your account was deactivated\nby your study coordinator.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(Color(.systemGroupedBackground))
                .navigationTitle("ADOPT-HF")
                .toolbar {
                    if AccountButton.shouldDisplay {
                        AccountButton(isPresented: $presentingAccount)
                    }
                }
        }
    }
}


#if DEBUG
#Preview {
    StudyConcluded(presentingAccount: .constant(false))
        .previewWith(standard: ENGAGEHFStandard()) {
            AccountConfiguration(service: InMemoryAccountService())
        }
}
#endif
