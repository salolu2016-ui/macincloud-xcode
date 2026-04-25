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
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
             .animation(.default, value: filteredLandmarks)
             .navigationTitle("Landmarks")
        } detail: {
            Text("Seleccione un Landmark")
        }
    }
}


#Preview {
    LandmarkList()
}
