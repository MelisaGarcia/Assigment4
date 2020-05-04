//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Andrea Dancek on 2020-05-03.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class cityViewController: UIViewController {
    
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8157, green: 0.9176, blue: 0.9098, alpha: 1)
 
        let countryHeader  = UILabel()
        countryHeader.text = " Country"
        let countryValue = UILabel()
        countryValue.text = city.icon
 
        let cityHeader = UILabel()
        cityHeader.text = "City"
        let cityValue = UILabel()
        cityValue.text = city.name
  
        let temperatureHeader = UILabel()
        temperatureHeader.text = "Temperature"
        let temperatureValue = UILabel()
        temperatureValue.text = String(city.temp)
  
        let sumaryHeader = UILabel()
        sumaryHeader.text = "Sumary"
        let sumaryValue = UILabel()
        sumaryValue.text = String(city.summary)
         

    let stackViewHeaders = UIStackView.init(arrangedSubviews: [countryHeader, cityHeader,temperatureHeader, sumaryHeader])
         stackViewHeaders.translatesAutoresizingMaskIntoConstraints = false
         stackViewHeaders.axis = .vertical
         stackViewHeaders.alignment = .center
         stackViewHeaders.distribution = .equalSpacing
         stackViewHeaders.spacing = 20
         
         
    let stackViewValues = UIStackView.init(arrangedSubviews: [countryValue, cityValue, temperatureValue, sumaryValue])
        stackViewValues.translatesAutoresizingMaskIntoConstraints = false
         stackViewValues.axis = .vertical
         stackViewValues.alignment = .center
         stackViewValues.distribution = .equalSpacing
         stackViewValues.spacing = 30
        
        view.addSubview(stackViewValues)
        view.addSubview(stackViewHeaders)
                
    
    }

 
        
   
}
