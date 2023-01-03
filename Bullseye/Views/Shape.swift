//
//  Shape.swift
//  Bullseye
//
//  Created by Jiwon Yoon on 2023/01/03.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200.0, height: 100.0)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: 200.0, height: 100.0)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200.0, height: 100.0)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200.0, height: 100.0)
        }
        .background(Color.green)
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
    }
}
