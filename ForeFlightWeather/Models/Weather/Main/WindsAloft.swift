//
//  WindsAloft.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - WindsAloft
struct WindsAloft: Codable {
    let lat: Double?
    let lon: Double?
    let dateIssued: String?
    let windsAloft: [WindsAloftElement]?
    let source: String?

    enum CodingKeys: String, CodingKey {
        case lat = "lat"
        case lon = "lon"
        case dateIssued = "dateIssued"
        case windsAloft = "windsAloft"
        case source = "source"
    }

}
