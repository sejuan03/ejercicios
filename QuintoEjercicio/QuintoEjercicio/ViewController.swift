//
//  ViewController.swift
//  QuintoEjercicio
//
//  Created by Mac on 17/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    private let nameList = ["Luis","Gloria","David","Natalia"]
    private var nameIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showName()
    }
    
    private func showName() {
        nameLabel.text = nameList[nameIndex]
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        updateNameIndex()
        showName()
    }
    
    private func updateNameIndex() {
        if nameIndex < nameList.count-1 {
            nameIndex += 1
        } else {
            nameIndex = 0
        }
    }
}

