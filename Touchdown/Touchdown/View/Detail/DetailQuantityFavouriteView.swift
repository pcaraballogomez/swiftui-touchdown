//
//  DetailQuantityFavouriteView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 30/1/24.
//

import SwiftUI

struct DetailQuantityFavouriteView: View {

    // MARK: - Properties
    @State private var counter = Int.zero

    private struct VisualConstants {
        static let spacing = 6.0
        static let counterLabelMinWidth = 36.0
    }

    // MARK: - Body
    var body: some View {
        HStack(spacing: VisualConstants.spacing) {
            Button {
                guard counter > .zero else { return }
                counter -= 1
            } label: {
                Image(systemName: Constanst.SystemIconName.minusCircle)
            }

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: VisualConstants.counterLabelMinWidth)

            Button {
                guard counter < 100 else { return }
                counter += 1
            } label: {
                Image(systemName: Constanst.SystemIconName.plusCircle)
            }

            Spacer()

            Button {

            } label: {
                Image(systemName: Constanst.SystemIconName.heartCircle)
                    .foregroundColor(.pink)
            }
        } //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - Preview
struct DetailQuantityFavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        DetailQuantityFavouriteView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
