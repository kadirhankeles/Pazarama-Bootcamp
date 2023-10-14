//
//  ConverterClass.swift
//  RomanToInteger
//
//  Created by Kadirhan Keles on 14.10.2023.
//

import Foundation
import UIKit

class ConverterClass {
    var romanNumber: [String: Int] = ["M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1 ]
    var result = 0
    
    
    func convertRomaToInteger(romanString: String) -> Int {
        var previousResult = 0
        for i in romanString {
            if let value = romanNumber[String(i)] {
                
                if value > previousResult {
                    result += value - 2 * previousResult
                } else {
                    result += value
                }
                
                previousResult = value
                // DC 500 100
                // CD 100 500
            }
            
        }
        return result
    }
    
    func makeAlert(viewcontroller:UIViewController){
        let alert = UIAlertController(title: "Error", message: "Wrong Number Style", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        viewcontroller.present(alert,animated: true)
    }
}
