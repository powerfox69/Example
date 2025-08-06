//
//  ViewController.swift
//  ExampleApp
//
//  Created by Gleb on 7/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        updateNumbers()
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
}
