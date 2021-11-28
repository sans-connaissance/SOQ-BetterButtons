//
//  Buttons.swift
//  UMSalaryPubV4
//
//  Created by David Malicke on 11/17/21.
//

import SwiftUI

struct SortButton: View {
    
    var name: Select
    @Binding var bools: [String : Bool]

    var body: some View {
        Button {
            func show(button: Select) {
                Select.allCases.forEach { button in
                    bools[button.rawValue] = false
                }
                
                bools[button.rawValue] = true
            }
            
        } label: {
            Text(name.rawValue)
        }
        
    }
}

enum Select: String, CaseIterable {
    case arrayOne = "arrayOne"
    case arrayTwo = "arrayTwo"
    case arrayThree = "arrayThree"
}

