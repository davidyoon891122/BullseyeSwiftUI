//
//  RoundedView.swift
//  Bullseye
//
//  Created by Jiwon Yoon on 2023/01/04.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)

    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
    }
}


struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10.0) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewStroked(systemName: "list.dash")
        }
    }
}

struct RoundedView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
