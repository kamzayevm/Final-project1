//
//  earthquakeData.swift
//  Final project
//
//  Created by Mubarak Kamzayev on 14.12.2024.
//

import Foundation

//MARK: For Earthquake
struct EarthquakeResponse: Decodable {
    let features: [EarthquakeFeature]
}

struct EarthquakeFeature: Decodable {
    let properties: EarthquakeProperties
    let geometry: Geometry
}

struct EarthquakeProperties: Decodable {
    let mag: Double?
    let place: String
    let time: Double
    let magType: String?
    let title: String?
}

struct Geometry: Decodable {
    let type: String
    let coordinates: [Double]
}
