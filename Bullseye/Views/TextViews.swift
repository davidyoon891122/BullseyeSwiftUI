//
//  TextViews.swift
//  Bullseye
//
//  Created by Jiwon Yoon on 2023/01/02.
//

import SwiftUI

struct InstructionText: View {
    var text: String

    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String

    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct SliderLabelText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.body)
            .foregroundColor(Color("TextColor"))
            .bold()
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    var title: String

    var body: some View {
        Text(title)
            .bold()
            .font(.caption)
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
    }
}

struct BodyText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String

    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instruction")
            BigNumberText(text: "999")
            SliderLabelText(text: "50")
            LabelText(title: "SCORE")
            BodyText(text: "You scored 200 Points \n🇰🇷🇰🇷🇰🇷")
            ButtonText(text: "Start New Round")
        }
        .padding()
    }
}
