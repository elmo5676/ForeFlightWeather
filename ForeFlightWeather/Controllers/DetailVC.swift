//
//  DetailVC.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        initialSetup()
        updateUI(self.report)
    }
    
    var report: Report?
    
    // MARK: - User Interface
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var valueLabels: [UILabel]!
    @IBOutlet var sectionTitleLabels: [UILabel]!
    @IBOutlet weak var airfieldInfoView: UIView!
    @IBOutlet weak var currentWeatherView: UIView!
    
    //Airfield Info
    @IBOutlet weak var icaoValue: UILabel!
    @IBOutlet weak var latLonValue: UILabel!
    @IBOutlet weak var elevationValue: UILabel!
    //Current WX
    @IBOutlet weak var currentMetarValue: UILabel!
    @IBOutlet weak var tempCValue: UILabel!
    @IBOutlet weak var dewPointCValue: UILabel!
    @IBOutlet weak var pressureHgValue: UILabel!
    @IBOutlet weak var densityValue: UILabel!
    @IBOutlet weak var humidityValue: UILabel!
    @IBOutlet weak var flightRulesValue: UILabel!
    @IBOutlet weak var cloudsL1Value: UILabel!
    @IBOutlet weak var cloudsL2Value: UILabel!
    @IBOutlet weak var visValue: UILabel!
    @IBOutlet weak var windValue: UILabel!
    
    
    // MARK: - Functionality
    func updateUI(_ report: Report?) {
        guard let report = report else { return }
        guard let condition = report.conditions else { return }
        guard report.forecast != nil else { return }
        icaoValue.text = "\(condition.ident?.uppercased() ?? "")"
        latLonValue.text = "\(condition.lat?.toStringWithDecimals(4) ?? "")|\(condition.lon?.toStringWithDecimals(4) ?? "")"
        elevationValue.text = "\(condition.elevationFt ?? -99)"
        //Current WX
        currentMetarValue.text = "\(condition.text ?? "")"
        tempCValue.text = "\(condition.tempC ?? -99)"
        dewPointCValue.text = "\(condition.dewpointC ?? -99)"
        pressureHgValue.text = "\(condition.pressureHg?.toStringWithDecimals(1) ?? "")"
        densityValue.text = "\(condition.densityAltitudeFt ?? -99)"
        humidityValue.text = "\(condition.relativeHumidity ?? -99)"
        flightRulesValue.text = "\(condition.flightRules ?? "")".uppercased()
        cloudsL1Value.text = "\(condition.cloudLayers?[0].coverage ?? "")".uppercased()
        cloudsL2Value.text = "\(condition.cloudLayersV2?[0].coverage ?? "")".uppercased()
        if let vis = condition.visibility {
            let visStr = "\(vis.prevailingVisSm ?? -99) & \(vis.distanceSm ?? -99)"
            visValue.text = visStr
        }
        if let wind = condition.wind {
            let windStr = "\(wind.direction ?? -99) @ \(wind.speedKts ?? -99)"
            windValue.text = windStr
        }
        // TODO: Add: Forcasts and Winds Aloft
    }
    
    func initialSetup() {
        let borderColor: CGColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let borderWidth: CGFloat = 1
        let cornerRadius: CGFloat = 5
        airfieldInfoView.layer.borderColor = borderColor
        airfieldInfoView.layer.borderWidth = borderWidth
        airfieldInfoView.layer.cornerRadius = cornerRadius
        currentWeatherView.layer.borderColor = borderColor
        currentWeatherView.layer.borderWidth = borderWidth
        currentWeatherView.layer.cornerRadius = cornerRadius
        for label in titleLabels {
            label.textAlignment = .left
        }
        for label in valueLabels {
            label.textAlignment = .right
            label.adjustsFontSizeToFitWidth = true
        }}
}
