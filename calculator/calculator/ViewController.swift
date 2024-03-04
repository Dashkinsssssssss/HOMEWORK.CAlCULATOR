//
//  ViewController.swift
//  calculator
//
//  Created by Дарья on 28.02.2024.
//

import UIKit

enum Operation {
    case none
    case sum
    case minus
    case multiplication
    case division
}

class ViewController: UIViewController {
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    
    @IBOutlet var button: [UIButton]!

    
    var state: Operation = .none
    var firstValue: Double = 0
    var secondValue: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func oneValue(_ sender: UIButton) {
        guard var value = resultText.text else { return }
        value += "\(sender.tag)"
        resultText.text = value
        
    }
    
    private func changeVisual() {
        for view in button {
            view.layer.cornerRadius = 50
        }
        resultText.textAlignment = .right
        resultText.font = .systemFont(ofSize: 80)
        resultText.textColor = .white
    }
    
    
    func resultAction(_ sender: Any) {
        guard let value = resultText.text else { return }
        secondValue = Double(value) ?? 0
    
        switch state {
        case .none:
            break
        case .sum:
            let result = firstValue + secondValue
            resultText.text = "\(result)"
        case .minus:
            let result = firstValue - secondValue
            resultText.text = "\(result)"
        case .multiplication:
            let result = firstValue * secondValue
            resultText.text = "\(result)"
        case .division:
            let result = firstValue / secondValue
            resultText.text = "\(result)"
        }
    }
    
    @IBAction func sumOperation(_ sender: Any) {
        guard let value = resultText.text else { return }
        firstValue = Double(value) ?? 0
        state = .sum
        resultText.text = ""
    }
    
    @IBAction func minusOperation(_ sender: Any) {
        guard let value = resultText.text else { return }
        firstValue = Double(value) ?? 0
        state = .minus
        resultText.text = ""
    }
    
    @IBAction func multiplicationOperation(_ sender: Any) {
        guard let value = resultText.text else { return }
        firstValue = Double(value) ?? 0
        state = .multiplication
        resultText.text = ""
    }
    
    @IBAction func divisionOperation(_ sender: Any) {
        guard let value = resultText.text else { return }
        firstValue = Double(value) ?? 0
        state = .division
        resultText.text = ""
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        var _: Double = 0
        var _: Double = 0
        
    }
}

      



