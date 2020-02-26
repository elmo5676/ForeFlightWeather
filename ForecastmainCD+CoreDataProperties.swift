//
//  ForecastmainCD+CoreDataProperties.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension ForecastmainCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ForecastmainCD> {
        return NSFetchRequest<ForecastmainCD>(entityName: "ForecastMainCD")
    }

    @NSManaged public var conditions: NSObject?
    @NSManaged public var dateIssued: Date?
    @NSManaged public var elevationFt: Double
    @NSManaged public var ident: String?
    @NSManaged public var lat: Double
    @NSManaged public var lon: Double
    @NSManaged public var periodEnd: Date?
    @NSManaged public var periodStart: Date?
    @NSManaged public var text: String?

}
