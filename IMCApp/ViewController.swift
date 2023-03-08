//
//  ViewController.swift
//  IMCApp
//
//  Created by Eduardo Junior on 21/01/23.
//

import UIKit
 
class ViewController: UIViewController {
    @IBOutlet weak var weightImc: UITextField!
    @IBOutlet weak var heightImc: UITextField!
    @IBOutlet weak var textResult: UILabel!
    
    var imc: Double = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateImc(_ sender: Any) {
        // Conversão para Double
        if let weight = Double(weightImc.text ?? ""), let height = Double(heightImc.text ?? "") {
        // Calculador do IMC
            imc = weight / (height * height)
            showResults()
            
        }
    }
    
    func showResults() {
        var result: String = ""
        
            switch imc {
                case 0..<16:
                    result = "Magro"
                case 16..<18.5:
                    result = "Abaixo do peso"
                case 18.5..<25:
                    result = "Peso ideal"
                case 25..<30:
                    result = "Excesso de peso"
                default:
                    result = "Obesidade"
        }
        
        textResult.text = result
    }
}

