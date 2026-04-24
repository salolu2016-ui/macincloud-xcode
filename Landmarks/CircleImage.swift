//
//  CircleImage.swift
//  Landmarks
//
//  Created by user286595 on 4/23/26.
//
//
// Diana Luna
// Diplomado de Diseño y Programación de Apps
// ING2450 - Programación de Apps para IOS - (A73)
// 26/04/2026
// Ordenamiento de una lista de números
//Reto de aprendizaje 2. App Mobile: Landmarks
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                      }
            .shadow(radius: 7)    }
}

#Preview {
    CircleImage()
}
