//
//  earthquakeManager.swift
//  Final project
//
//  Created by Mubarak Kamzayev on 14.12.2024.
//
import Foundation
import Alamofire

struct AFManager {
    
    typealias CompletionHandlerEarthquake = (EarthquakeResponse) -> Void
    let api = "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson"
    
    func fetchEartquake(completion: @escaping CompletionHandlerEarthquake){
        AF.request(api).response { response in
            if let data = response.data {
                let decoder = JSONDecoder()
                do {
                    let decoderData = try decoder.decode(EarthquakeResponse.self, from: data)
                    completion(decoderData)
                }
                catch {
                    print("error")
                }
            }
        }
    }
}

