//
//  SearchViewController.swift
//  Weather
//
//  Created by Euphemia Wu on 4/5/24.
//

import UIKit

protocol SearchViewControllerDelegate {
    func didChangeCity(city: String)
}

class SearchViewController: UIViewController {
    
    var currentCity = " "
    var delegate: SearchViewControllerDelegate?

    @IBOutlet weak var currentCityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        cityTextField.becomeFirstResponder()
        currentCityLabel.text = currentCity
    }
    
    @IBAction func toHome(_ sender: Any) {
        dismiss(animated: true)
        if !cityTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            delegate?.didChangeCity(city: cityTextField.text!)
        }
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
