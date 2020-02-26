//
//  UIButton+Extension.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import UIKit

extension UIButton {
    
    func showPressed() {
        let bgc = self.layer.backgroundColor
        UIView.animate(withDuration: 0.05) {
            self.backgroundColor = #colorLiteral(red: 0.6157805324, green: 0.6158866882, blue: 0.6157665849, alpha: 1)
        }
        UIView.animate(withDuration: 0.35) {
            self.layer.backgroundColor = bgc
        }
    }
    
    
}
