//
//  PointsView.swift
//  Bullseye
//
//  Created by Jiwon Yoon on 2023/02/01.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10.0) {
            InstructionText(text: "THE SLIDER VALUE IS")
            BigNumberText(text: "89")
            BodyText(text: "You scored 200 points\n🇰🇷🇰🇷🇰🇷")
            Button(action: {

            }, label: {
                ButtonText(text: "Start New Round")
                    .frame(width: 200)
            })
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x: 5, y:5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView()
            .preferredColorScheme(.dark)
        PointsView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
