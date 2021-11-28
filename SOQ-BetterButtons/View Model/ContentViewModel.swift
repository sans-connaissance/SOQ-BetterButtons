//
//  ContentViewModel.swift
//  SOQ-BetterButtons
//
//  Created by David Malicke on 11/27/21.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var contentArray = [String]()
    @Published var bools = [String : Bool]()
    
    
    private let arrayOne = ["One", "Two", "Three"]
    private let arrayTwo = ["Four", "Five", "Six"]
    private let arrayThree = ["Seven", "Eight", "Nine"]
    

    
    func setButtons() {
        
        Select.allCases.forEach { button in
            bools[button.rawValue] = false
        }
        
     //   bools["arrayOne"] = true
    }
    
    func getArray() {
        
        if bools["arrayOne"]! {
            contentArray.removeAll()
            contentArray.append(contentsOf: arrayOne)
        }
        
        if bools["arrayTwo"]! {
            contentArray.removeAll()
            contentArray.append(contentsOf: arrayTwo)
        }
        
        if bools["arrayThree"]! {
            contentArray.removeAll()
            contentArray.append(contentsOf: arrayThree)
        }
        
    }
    

    
//    func show(button: Select) {
//        Select.allCases.forEach { button in
//            bools[button.rawValue] = false
//        }
//
//        bools[button.rawValue] = true
//    }
    
}
