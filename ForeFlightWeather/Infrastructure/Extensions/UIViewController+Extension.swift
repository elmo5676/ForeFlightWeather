//
//  UIViewController+Extension.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func directToInForeFlight(icao: String) {
        var urlString = URLComponents(string: "foreflightmobile://maps/search?")!
        urlString.query = "q=D \(String(describing: icao))"
        let url = urlString.url!
        print(url)
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    func alert(title: String, message: String, button: String) {
        let alertController = UIAlertController(title: title, message: message , preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: button, style: UIAlertAction.Style.default,handler: nil))
        self.present(alertController, animated: true)
    }
}


