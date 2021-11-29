//
//  ContentViewModel.swift
//  SOQ-BetterButtons
//
//  Created by David Malicke on 11/27/21.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var contentArray: [String]

    private let arrayOne = ["One", "Two", "Three"]
    private let arrayTwo = ["Four", "Five", "Six"]
    private let arrayThree = ["Seven", "Eight", "Nine"]
    
    init() {
        contentArray = arrayOne
    }
    
    func updateContentArray(select: Select) {
        switch select {
        case .arrayOne:
            contentArray = arrayOne
        case .arrayTwo:
            contentArray = arrayTwo
        case .arrayThree:
            contentArray = arrayThree
        }
    }
}


