//
//  LandmarkList.swift  .swift
//  Landmarks
//
//  Created by user286595 on 4/24/26.
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


struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in 
            LandmarkRow(landmark: landmark)
        }
    }
}


#Preview {
    LandmarkList()
}
