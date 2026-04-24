//
//  MapView.swift
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
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
            //.mapStyle(.imagery)
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


#Preview {
    MapView()
}
