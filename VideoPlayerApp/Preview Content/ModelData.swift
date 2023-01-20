//
//  ModelData.swift
//  VideoPlayerApp
//
//  Created by Francisco Lira on 1/19/23.
//

import Foundation

var videoPreview: Video = load("videoData.json")


//This function will convert JSON Data to the format of the Struct
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase //added this additnal line
        //This lets it know to conver snakeCase to CamelCase
        
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
