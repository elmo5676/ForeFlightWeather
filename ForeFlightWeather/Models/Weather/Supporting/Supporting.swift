//
//  Supporting.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

//MARK: - Coverage
enum Coverage: String, Codable {
    case bkn = "bkn"
    case ovc = "ovc"
}


// MARK: - CloudLayer
struct CloudLayer: Codable {
    let coverage: String?
    let altitudeFt: Int?
    let ceiling: Bool?
    let altitudeQualifier: Int?

    enum CodingKeys: String, CodingKey {
        case coverage = "coverage"
        case altitudeFt = "altitudeFt"
        case ceiling = "ceiling"
        case altitudeQualifier = "altitudeQualifier"
    }
}


// MARK: - ConditionsVisibility
struct ConditionsVisibility: Codable {
    let distanceSm: Double?
    let prevailingVisSm: Double?

    enum CodingKeys: String, CodingKey {
        case distanceSm = "distanceSm"
        case prevailingVisSm = "prevailingVisSm"
    }

}

// MARK: - Wind
struct Wind: Codable {
    let speedKts: Int?
    let gustSpeedKts: Int?
    let direction: Int?
    let from: Int?
    let variable: Bool?

    enum CodingKeys: String, CodingKey {
        case speedKts = "speedKts"
        case gustSpeedKts = "gustSpeedKts"
        case direction = "direction"
        case from = "from"
        case variable = "variable"
    }
}

// MARK: - PurpleCondition
struct PurpleCondition: Codable {
    let text: String?
    let dateIssued: String?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let relativeHumidity: Int?
    let flightRules: String?
    let cloudLayers: [CloudLayer]?
    let cloudLayersV2: [CloudLayer]?
    let weather: [String]?
    let visibility: ConditionsVisibility?
    let wind: Wind?
    let period: Period?

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case dateIssued = "dateIssued"
        case lat = "lat"
        case lon = "lon"
        case elevationFt = "elevationFt"
        case relativeHumidity = "relativeHumidity"
        case flightRules = "flightRules"
        case cloudLayers = "cloudLayers"
        case cloudLayersV2 = "cloudLayersV2"
        case weather = "weather"
        case visibility = "visibility"
        case wind = "wind"
        case period = "period"
    }
}

// MARK: - Period
struct Period: Codable {
    let dateStart: String?
    let dateEnd: String?
    
    enum CodingKeys: String, CodingKey {
        case dateStart = "dateStart"
        case dateEnd = "dateEnd"
    }
}


// MARK: - FluffyCondition
struct FluffyCondition: Codable {
    let text: String?
    let tempMinC: Double?
    let tempMaxC: Double?
    let dewpointMinC: Double?
    let dewpointMaxC: Double?
    let flightRules: String?
    let cloudLayers: [CloudLayer]?
    let cloudLayersV2: [CloudLayer]?
    let weather: [String]?
    let visibility: PurpleVisibility?
    let wind: Wind?
    let period: Period?

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case tempMinC = "tempMinC"
        case tempMaxC = "tempMaxC"
        case dewpointMinC = "dewpointMinC"
        case dewpointMaxC = "dewpointMaxC"
        case flightRules = "flightRules"
        case cloudLayers = "cloudLayers"
        case cloudLayersV2 = "cloudLayersV2"
        case weather = "weather"
        case visibility = "visibility"
        case wind = "wind"
        case period = "period"
    }
}

// MARK: - PurpleVisibility
struct PurpleVisibility: Codable {
    let distanceSm: Double?
    let distanceQualifier: Int?

    enum CodingKeys: String, CodingKey {
        case distanceSm = "distanceSm"
        case distanceQualifier = "distanceQualifier"
    }
}


// MARK: - WindsAloftElement
struct WindsAloftElement: Codable {
    let validTime: String?
    let period: Period?
    let windTemps: [String: WindTemp]?

    enum CodingKeys: String, CodingKey {
        case validTime = "validTime"
        case period = "period"
        case windTemps = "windTemps"
    }
}

// MARK: - WindTemp
struct WindTemp: Codable {
    let directionFromTrue: Int?
    let knots: Int?
    let celsius: Int?
    let altitude: Int?
    let isLightAndVariable: Bool?
    let isGreaterThan199Knots: Bool?
    let turbulence: Bool?
    let icing: Bool?

    enum CodingKeys: String, CodingKey {
        case directionFromTrue = "directionFromTrue"
        case knots = "knots"
        case celsius = "celsius"
        case altitude = "altitude"
        case isLightAndVariable = "isLightAndVariable"
        case isGreaterThan199Knots = "isGreaterThan199Knots"
        case turbulence = "turbulence"
        case icing = "icing"
    }

}



