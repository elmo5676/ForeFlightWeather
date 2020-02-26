//
//  Mos.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - MOS
struct MOS: Codable {
    let station: String?
    let issued: String?
    let latitude: Double?
    let longitude: Double?
    let forecast: MOSForecast?

    enum CodingKeys: String, CodingKey {
        case station = "station"
        case issued = "issued"
        case latitude = "latitude"
        case longitude = "longitude"
        case forecast = "forecast"
    }
}

// MARK: - MOSForecast
struct MOSForecast: Codable {
    let text: String?
    let ident: String?
    let dateIssued: String?
    let period: Period?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let conditions: [FluffyCondition]?

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case ident = "ident"
        case dateIssued = "dateIssued"
        case period = "period"
        case lat = "lat"
        case lon = "lon"
        case elevationFt = "elevationFt"
        case conditions = "conditions"
    }
}
