//
//  ViewController.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WeatherDelegate {
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self as WeatherDelegate
        initialFormatting()
    }
    
    // MARK: - InitialSetup
    var delegate: WeatherDelegate!
    var report: Report?
    var icao: String? { didSet { icaoTitleLabel.text = self.icao}}

    // MARK: - UserInterface
    @IBOutlet weak var icaoTitleLabel: UILabel!
    @IBOutlet weak var icaoInputView: UIView!
    @IBOutlet weak var resultsView: UIView!
    @IBOutlet weak var tempCLabel: UILabel!
    @IBOutlet weak var dewPointLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet var titleLabels: [UILabel]!
    @IBOutlet var valueLabels: [UILabel]!
    
    //Navigation Bar
    @IBAction func directTo(_ sender: UIBarButtonItem) {
        if let icao = self.icao {
            self.directToInForeFlight(icao: icao)
        } else {
            self.alert(title: "No ICAO",
                       message: "Please enter an ICAO to go direct in ForeFlight",
                       button: "OK")
        }}
    @IBAction func showFullWx(_ sender: UIBarButtonItem) {
    if self.report != nil {
        performSegue(withIdentifier: "fullWxDetail", sender: Any?.self)
    } else {
        self.alert(title: "No Weather",
                   message: "Please choose a valid ICAO and try again!",
                   button: "Alright, I'll do that!")
    }}
    
    //TextField
    @IBOutlet weak var icaoTextFieldOutlet: UITextField!
    @IBAction func updateIcao(_ sender: UITextField) {
        clearUI()
        if let icao = sender.text {
            self.icao = icao
        }}
    @IBAction func icaoTextField(_ sender: UITextField) {
        clearUI()
        if let icao = sender.text {
            loadWeather(icao, sender)
        }}
    
    //Fetch Button
    @IBOutlet weak var fetchWxButton: UIButton!
    @IBAction func fetchWxButton(_ sender: UIButton) {
        sender.showPressed()
        loadWeather(self.icao ?? "ICAO", nil)
    }
    
    
    // MARK: - Functionality
    //Gets the weather
    private func loadWeather(_ icao: String, _ sender: UITextField?) {
        self.icao = icao
        _ = WeatherDownloader(icao: icao, delegate: self)
        sender?.resignFirstResponder()
    }
    
    //Delegate Function
    //Returns the weather
    internal func WeatherLoaded(_ report: Report?, fail: Bool) {
        if let report = report {
            self.report = report
            updateUI(report)
        } else {
            self.alert(title: "Invalid ICAO",
                       message: "Please enter a valid ICAO and try again.",
                       button: "Oops...")
        }}
    
    private func updateUI(_ report: Report?) {
        clearUI()
        guard let report = report else { print("No Report"); return }
        guard let conditions = report.conditions else { print("No Conditions"); return}
        tempCLabel.text = "\(conditions.tempC ?? -99)"
        dewPointLabel.text = "\(conditions.dewpointC ?? -99)"
        pressureLabel.text = "\(conditions.pressureHg ?? -99)"
    }
    
    private func clearUI() {
        tempCLabel.text = ""
        dewPointLabel.text = ""
        pressureLabel.text = ""
    }
    
    private func initialFormatting() {
        clearUI()
        let borderColor: CGColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let borderWidth: CGFloat = 1
        let cornerRadius: CGFloat = 5
        fetchWxButton.layer.borderColor = borderColor
        fetchWxButton.layer.borderWidth = borderWidth
        fetchWxButton.layer.cornerRadius = cornerRadius
        icaoInputView.layer.borderColor = borderColor
        icaoInputView.layer.borderWidth = borderWidth
        icaoInputView.layer.cornerRadius = cornerRadius
        resultsView.layer.borderColor = borderColor
        resultsView.layer.borderWidth = borderWidth
        resultsView.layer.cornerRadius = cornerRadius
        self.hideKeyboardWhenTappedAround()
        for label in titleLabels {
            label.textAlignment = .left
        }
        for label in valueLabels {
            label.textAlignment = .right
        }}
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "fullWxDetail" :
            let dvc = segue.destination as! DetailVC
            
            dvc.report = self.report
        default:
            print("no segue!")
        }}
    
}

