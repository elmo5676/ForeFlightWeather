//
//  Report.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - Report
struct Report: Codable {
    let conditions: Conditions?
    let forecast: Forecast?
    let windsAloft: WindsAloft?
    let mos: MOS?

    enum CodingKeys: String, CodingKey {
        case conditions = "conditions"
        case forecast = "forecast"
        case windsAloft = "windsAloft"
        case mos = "mos"
    }
}

