//
//  ViewController.swift
//  PrimerEjercicio
//
//  Created by Mac on 16/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    private var numberCount = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showNumber()
    }
    
    private func showNumber() {
        numberLabel.text = String(numberCount)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        updateNumberCount()
        showNumber()
    }
    
    private func updateNumberCount() {
        if numberCount != 0 {
            numberCount -= 1
        }
    }
}
    
