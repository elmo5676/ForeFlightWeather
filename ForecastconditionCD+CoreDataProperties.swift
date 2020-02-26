//
//  ForecastconditionCD+CoreDataProperties.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension ForecastconditionCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ForecastconditionCD> {
        return NSFetchRequest<ForecastconditionCD>(entityName: "ForecastConditionCD")
    }

    @NSManaged public var cloudlayers: NSObject?
    @NSManaged public var cloudlayersv2: NSObject?
    @NSManaged public var dateIssued: Date?
    @NSManaged public var elevationft: Double
    @NSManaged public var flightRules: String?
    @NSManaged public var ident: String?
    @NSManaged public var lat: Double
    @NSManaged public var lon: Double
    @NSManaged public var periodEnd: Date?
    @NSManaged public var periodStart: Date?
    @NSManaged public var relativehumidity: Int16
    @NSManaged public var text: String?
    @NSManaged public var visibility: NSObject?
    @NSManaged public var weather: NSObject?
    @NSManaged public var wind: NSObject?

}
