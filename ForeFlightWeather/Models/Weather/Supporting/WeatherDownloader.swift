//
//  WeatherDownloader.swift
//  ForeFlightWeather
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - WeatherDelegate
protocol WeatherDelegate {
    func WeatherLoaded(_ report: Report?, fail: Bool)
}

class WeatherDownloader {
    
    private var icao: String
    private var delegate: WeatherDelegate?
    private var urlBase = "https://qa.foreflight.com/weather/report/"
    
    init(icao: String,
        delegate: WeatherDelegate) {
        self.icao = icao
        self.delegate = delegate
        getWeather(icao: self.icao)
    }
    
    private let session: URLSession = {
        return URLSession(configuration: .default)
    }()
    
    private func getWeather(icao: String) {
        if let url = URL(string: urlBase + self.icao) {
            print(url)
            let request = URLRequest(url: url)
            let task = self.session.dataTask(with: request) { (data, response, error) -> Void in
                if let data = data {
                    let decoder = JSONDecoder()
                    if let weather = try? decoder.decode(Weather.self, from: data) {
                        DispatchQueue.main.async {
                            self.delegate?.WeatherLoaded(weather.report, fail: false)
                        }
                    } else {
                        DispatchQueue.main.async {
                            self.delegate?.WeatherLoaded(nil, fail: true)
                        }
                    }
                } else if let error = error {
                    print("Error downloading the Weather \(error)")
                } else {
                    print("Unexpected error with request")
                }}
            task.resume()
        }}
    
}
