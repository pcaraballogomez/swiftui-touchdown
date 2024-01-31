//
//  CustomBackButton.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 31/1/24.
//

import SwiftUI

struct CustomBackButton: View {

    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss

    // MARK: - Body
    var body: some View {
        Button {
            withAnimation(.easeIn) {
                dismiss()
            }
        } label: {
            Image(systemName: Constanst.SystemIconName.chevronLeft)
                .font(.title2)
                .foregroundColor(Resources.Colors.Text.tertiaryColor)
        }
    }
}

// MARK: - Preview
struct CustomBackButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackButton()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.Background.tertiaryColor)
    }
}
