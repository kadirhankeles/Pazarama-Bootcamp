//
//  ViewController.swift
//  RomanToInteger
//
//  Created by Kadirhan Keles on 14.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfRoman: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var buttonSave: UIButton!
    var converter = ConverterClass()
    var resultArray = [String]()
    var result = 0
    //let saveDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //converter.convertRomaToInteger(romanString: "MCMXCVII")
        buttonSave.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSave" {
            let destinationVC = segue.destination as! SaveViewController
            destinationVC.saveArray = resultArray
        }
    }
    
    
    @IBAction func buttonConvert(_ sender: UIButton) {
        if let inputText = tfRoman.text, !inputText.isEmpty {
            let stringText = inputText.uppercased()
            let isInputValid = stringText.allSatisfy { converter.romanNumber.keys.contains(String($0)) }
            if isInputValid {
                let intValue = converter.convertRomaToInteger(romanString: stringText)
                labelResult.text = String(intValue)
                result = intValue
                tfRoman.text = ""
                converter.result = 0
                buttonSave.isEnabled = true
            } else {
                converter.makeAlert(viewcontroller: self)
            }
        }
        
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        resultArray.append(String(result))
        performSegue(withIdentifier: "toSave", sender: nil )
    }
    
}

