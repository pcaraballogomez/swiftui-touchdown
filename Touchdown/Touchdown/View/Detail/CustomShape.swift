//
//  CustomShapeView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct CustomShape: Shape {
    
    private struct VisualConstants {
        static let cornerRadiusSize = 35.0
    }

    func path(in rect: CGRect) -> Path {
        let cornerRadiusSize = CGSize(width: VisualConstants.cornerRadiusSize,
                                      height: VisualConstants.cornerRadiusSize)
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: cornerRadiusSize)
        return Path(path.cgPath)
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428,
                                  height: 120))
            .padding()
    }
}
