//
//  WindsaloftCD+CoreDataProperties.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension WindsaloftCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WindsaloftCD> {
        return NSFetchRequest<WindsaloftCD>(entityName: "WindsAloftCD")
    }

    @NSManaged public var dateIssued: Date?
    @NSManaged public var lat: Double
    @NSManaged public var lon: Double
    @NSManaged public var periodateEnd: Date?
    @NSManaged public var perioddateStart: Date?
    @NSManaged public var validTime: Date?
    @NSManaged public var wt0: NSObject?
    @NSManaged public var wt3000: NSObject?
    @NSManaged public var wt6000: NSObject?
    @NSManaged public var wt9000: NSObject?
    @NSManaged public var wt12000: NSObject?
    @NSManaged public var wt15000: NSObject?
    @NSManaged public var wt18000: NSObject?
    @NSManaged public var wt21000: NSObject?
    @NSManaged public var wt24000: NSObject?
    @NSManaged public var wt27000: NSObject?
    @NSManaged public var wt30000: NSObject?
    @NSManaged public var wt33000: NSObject?
    @NSManaged public var wt36000: NSObject?
    @NSManaged public var wt39000: NSObject?
    @NSManaged public var wt42000: NSObject?
    @NSManaged public var wt45000: NSObject?
    @NSManaged public var wt48000: NSObject?
    @NSManaged public var wt51000: NSObject?
    @NSManaged public var wt54000: NSObject?

}
