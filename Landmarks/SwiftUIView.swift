//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by user286595 on 4/23/26.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                      }
            .shadow(radius: 7)    }
}

#Preview {
    SwiftUIView()
}
