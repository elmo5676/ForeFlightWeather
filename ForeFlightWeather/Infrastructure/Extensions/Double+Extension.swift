//
//  Double+Extension.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

extension Double {
    
    func toStringWithDecimals(_ num: Int) -> String {
        return "\(String(format: "%.\(num)f",self))"
    }
}
