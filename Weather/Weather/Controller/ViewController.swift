//
//  ViewController.swift
//  Weather
//
//  Created by Euphemia Wu on 4/5/24.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, CLLocationManagerDelegate, SearchViewControllerDelegate {
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    
    let locationManager = CLLocationManager()
    let weather = Weather()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lon = locations[0].coordinate.longitude
        let lat = locations[0].coordinate.latitude
        let apiKey = "dfe09b3e377bc22be8d68de734b76e99"
        //print(lon)
        //print(lat)
        AF.request("https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&units=imperial&appid=\(apiKey)").responseJSON { response in
            if let data = response.value {
                let weatherJSON = JSON(data)
                //print(weatherJSON["main"]["temp"])
                //print(weatherJSON["name"])
                self.weather.temp = "\(Int(round(weatherJSON["main"]["temp"].doubleValue)))˚F"
                self.weather.city = "\(weatherJSON["name"].stringValue)"
                self.tempLabel.text = self.weather.temp
                self.locationLabel.text = self.weather.city
                //for random image display
                let randomNumber = Int.random(in: 1...26)
                let imageName = "\(randomNumber).png" 
                //self.iconImageView.image = UIImage(named: imageName)
            }
            else {
                print("API Failed")
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        locationLabel.text = "Fetching location failed"
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let viewcontroller = segue.destination as? SearchViewController {
            viewcontroller.currentCity = weather.city
            viewcontroller.delegate = self
        }
    }
    
    func didChangeCity(city: String) {
        let apiKey = "dfe09b3e377bc22be8d68de734b76e99"
        AF.request("https://api.openweathermap.org/data/2.5/weather?q=\(city)&units=imperial&appid=\(apiKey)").responseJSON { response in
            if let data = response.value {
                let weatherJSON = JSON(data)
                
                self.weather.temp = "\(Int(round(weatherJSON["main"]["temp"].doubleValue)))˚F"
                self.weather.city = "\(weatherJSON["name"].stringValue)"
                self.tempLabel.text = self.weather.temp
                self.locationLabel.text = self.weather.city
                //for random image display
                let randomNumber = Int.random(in: 1...26)
                let imageName = "\(randomNumber).png"
                self.iconImageView.image = UIImage(named: imageName)
            }
            else {
                print("API Failed")
            }
        }
    }
    
}

