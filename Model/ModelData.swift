//
//  ModelData.swift
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

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("No se puede encontrar el archivo \(filename) en el paquete de la App.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("No se puede cargar \(filename) desde el  paquete de la App:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("No se pudo leer \(filename) como \(T.self):\n\(error)")
    }
}
