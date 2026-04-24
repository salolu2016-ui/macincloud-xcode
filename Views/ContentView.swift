//
//  ContentView.swift
//  Landmarks
//
//  Created by user286595 on 4/22/26.
//
// Diana Luna
// Diplomado de Diseño y Programación de Apps
// ING2450 - Programación de Apps para IOS - (A73)
// 26/04/2026
// Ordenamiento de una lista de números
//Reto de aprendizaje 2. App Mobile: Landmarks
//
import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            
        CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                    .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                
                    Text("About Turtle Rock")
                        .font(.title2)
                Text("""
                Turtle Rock es una formación rocosa en el Parque Nacional Joshua Tree, California.
                Se encuentra frente al estacionamiento de la entrada al área de Real Hidden Valley en el Parque Nacional Joshua Tree.
                La cara noroeste tiene varios cientos de pies de largo y funciona como una enorme pared que protege una agradable área de picnic con árboles, bancos e incluso baños.
                """)
            }
                .padding()
                Spacer()
            }
        }
}


#Preview {
    ContentView()
}
