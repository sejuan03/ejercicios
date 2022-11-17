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
    @IBOutlet weak var faceImageView: UIImageView!
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
        if isEvenNumber() {
            myImage = "sad"
        } else {
            myImage = "happy"
        }
    }
    
    private func isEvenNumber() -> Bool {
        return number % 2 == 0
    }
    
    private func setImageView() {
        faceImageView.image = UIImage(named: myImage)
    }
}
    
