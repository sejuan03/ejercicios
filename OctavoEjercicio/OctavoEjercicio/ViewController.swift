//
//  ViewController.swift
//  OctavoEjercicio
//
//  Created by Mac on 17/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    private var number = 1
    private var myImage = "happy"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showNumber()
    }
    
    private func showNumber() {
        numberLabel.text = String(number)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        updateNumber()
        updateImage()
        setImageView()
        showNumber()
    }
    
    private func updateNumber() {
        number = Int.random(in: 1...10)
    }
       
    private func updateImage() {
        if isWrongNumber() {
            myImage = "boom"
            setExplotionState()
        } else {
            myImage = "happy"
        }
    }
    
    private func isWrongNumber() -> Bool {
        return number == 9
    }
    
    private func setExplotionState() {
        numberLabel.isHidden = true
        nextButton.isHidden = true
    }
    
    private func setImageView() {
        faceImageView.image = UIImage(named: myImage)
    }
}

