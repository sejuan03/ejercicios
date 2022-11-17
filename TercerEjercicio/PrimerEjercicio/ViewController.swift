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
    private var number = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showNumber()
    }
    
    private func showNumber() {
        numberLabel.text = String(number)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        updateNumber()
        if isWinningNumber() {
            setBingoState()
        }
        showNumber()
    }
    
    private func updateNumber() {
        number = Int.random(in: 1...10)
    }
    
    private func isWinningNumber() -> Bool {
        return number == 7
    }
    
    private func setBingoState() {
        nextButton.setTitle("BINGO!", for: .normal)
        nextButton.isEnabled = false
    }
}
    
