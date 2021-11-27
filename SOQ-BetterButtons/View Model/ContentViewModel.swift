//
//  ContentViewModel.swift
//  SOQ-BetterButtons
//
//  Created by David Malicke on 11/27/21.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var contentArray = [String]()
    
    @Published var showArrayOne = true
    @Published var showArrayTwo = false
    @Published var showArrayThree = false
    
    private let arrayOne = ["One", "Two", "Three"]
    private let arrayTwo = ["Four", "Five", "Six"]
    private let arrayThree = ["Seven", "Eight", "Nine"]
    
    func getArray() {
        
        if showArrayOne {
            contentArray.removeAll()
            contentArray.append(contentsOf: arrayOne)
        }
        
        if showArrayTwo {
            contentArray.removeAll()
            contentArray.append(contentsOf: arrayTwo)
        }
        
        if showArrayThree {
            contentArray.removeAll()
            contentArray.append(contentsOf: arrayThree)
        }
        
    }
    
}
