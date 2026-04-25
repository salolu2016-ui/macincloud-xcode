//
//  Detail.swift
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


struct LandmarkDetail: View {
    
    //var landmark: Landmark
    
    var body: some View {
        VStack {
            VStack {
                MapView()
                    .frame(height: 300)
                
                
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    
                    
                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
                }
                .padding()
                
                
                Spacer()
            }
        }
    }
    
}
#Preview {
    LandmarkDetail()
}
