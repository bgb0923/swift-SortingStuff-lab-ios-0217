//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func performOperation(with numbers: Double..., operation: (Double,Double) -> Double) -> Double {
        let x = numbers[0]
        let numbers = numbers.dropFirst()
        return numbers.reduce(x, operation)
    }
}
