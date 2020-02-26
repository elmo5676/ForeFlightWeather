//
//  Forecast.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - Forecast
struct Forecast: Codable {
    let text: String?
    let ident: String?
    let dateIssued: String?
    let period: Period?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let conditions: [PurpleCondition]?

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
