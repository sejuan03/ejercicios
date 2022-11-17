//
//  ViewController.swift
//  SeptimoEjercicio
//
//  Created by Mac on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var brandCarImageView: UIImageView!
    private var carBrandList = ["Mazda","Ferrari","Ford"]
    private var brandIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showBrand()
    }
    
    private func showBrand() {
        brandLabel.text = String(carBrandList[brandIndex])
    }
    
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        updateNameIndex()
        showCarImage()
        showBrand()
    }
    
    private func updateNameIndex() {
        if brandIndex < carBrandList.count-1 {
            brandIndex += 1
        } else {
            brandIndex = 0
        }
    }
    
    private func showCarImage() {
        brandCarImageView.image = UIImage(named: String(brandIndex))
    }
}

