//
//  DetailViewController.swift
//  FavoriteCities
//
//  Created by Alvin Tuo on 7/8/19.
//  Copyright © 2019 SWIFT. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var detailItem: City? {
        didSet {
            
            configureView()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {
        if let city = self.detailItem {
            if cityTextField != nil {
                cityTextField.text = city.name
                stateTextField.text = city.name
                populationTextField.text = String(city.population)
                imageView.image = UIImage(data: city.image)
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let city = self.detailItem {
            city.name = cityTextField.text!
            city.state = stateTextField.text!
            city.population = Int(populationTextField.text!)!
        }
    }
    
}

