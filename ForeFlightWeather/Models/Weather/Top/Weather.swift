//
//  Weather.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - Weather
struct Weather: Codable {
    let report: Report?

    enum CodingKeys: String, CodingKey {
        case report = "report"
    }
}
