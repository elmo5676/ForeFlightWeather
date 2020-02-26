//
//  ConditionsCD+CoreDataProperties.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension ConditionsCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ConditionsCD> {
        return NSFetchRequest<ConditionsCD>(entityName: "ConditionsCD")
    }

    @NSManaged public var cloudLayers: Data?
    @NSManaged public var cloudLayersv2: NSObject?
    @NSManaged public var dateIssued: String?
    @NSManaged public var densityAltitudeft: Double
    @NSManaged public var dewPointC: Double
    @NSManaged public var elevationFt: Double
    @NSManaged public var flightRules: String?
    @NSManaged public var ident: String?
    @NSManaged public var lat: Double
    @NSManaged public var lon: Double
    @NSManaged public var pressureHg: Double
    @NSManaged public var relativeHumidity: Int16
    @NSManaged public var tempC: Double
    @NSManaged public var text: String?
    @NSManaged public var visibility: NSObject?
    @NSManaged public var weather: String?
    @NSManaged public var wind: String?

}
