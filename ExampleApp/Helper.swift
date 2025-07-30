//
//  Helper.swift
//  ExampleApp
//
//  Created by Gleb on 7/29/25.
//

import Foundation

class Helper {
    private var numbers: [Int] = [] // 1
    
    func addNumber(_ number: Int) { // 2
        numbers.append(number)
    }
    
    func getNumbers() -> [Int] { // 3
        numbers
    }
    
    func updateNumbers() {
        
    }
}
