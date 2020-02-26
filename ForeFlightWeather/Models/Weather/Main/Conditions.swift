//
//  Conditions.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - Conditions
struct Conditions: Codable {
    let text: String?
    let ident: String?
    let dateIssued: String?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let tempC: Int?
    let dewpointC: Int?
    let pressureHg: Double?
    let densityAltitudeFt: Int?
    let relativeHumidity: Int?
    let flightRules: String?
    let cloudLayers: [CloudLayer]?
    let cloudLayersV2: [CloudLayer]?
    let weather: [String?]?
    let visibility: ConditionsVisibility?
    let wind: Wind?

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case ident = "ident"
        case dateIssued = "dateIssued"
        case lat = "lat"
        case lon = "lon"
        case elevationFt = "elevationFt"
        case tempC = "tempC"
        case dewpointC = "dewpointC"
        case pressureHg = "pressureHg"
        case densityAltitudeFt = "densityAltitudeFt"
        case relativeHumidity = "relativeHumidity"
        case flightRules = "flightRules"
        case cloudLayers = "cloudLayers"
        case cloudLayersV2 = "cloudLayersV2"
        case weather = "weather"
        case visibility = "visibility"
        case wind = "wind"
    }
}
