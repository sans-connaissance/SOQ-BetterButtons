//
//  Buttons.swift
//  UMSalaryPubV4
//
//  Created by David Malicke on 11/17/21.
//

import SwiftUI



struct ShowArrayOneButton: View {
    
    //I think I need to use ENUMs instead -- check Hacking with Swift thing
//    @Binding var buttonName: String
//    @Binding var dictOfBools: [String : Bool]
    
    @Binding var showArrayOne: Bool
    @Binding var showArrayTwo: Bool
    @Binding var showArrayThree: Bool

    
    var body: some View {
        Button {
            showArrayOne = true
            showArrayTwo = false
            showArrayThree = false

            
        } label: {
            Text("Array 1")
                .foregroundColor(showArrayOne ? .blue : .gray)
        }
        
    }
}

struct ShowArrayTwoButton: View {
    
    @Binding var showArrayOne: Bool
    @Binding var showArrayTwo: Bool
    @Binding var showArrayThree: Bool

    
    var body: some View {
        Button {
            showArrayOne = false
            showArrayTwo = true
            showArrayThree = false

            
        } label: {
            Text("Array 2")
                .foregroundColor(showArrayTwo ? .blue : .gray)
        }
        
    }
}


struct ShowArrayThreeButton: View {
    
    @Binding var showArrayOne: Bool
    @Binding var showArrayTwo: Bool
    @Binding var showArrayThree: Bool

    
    var body: some View {
        Button {
            showArrayOne = false
            showArrayTwo = false
            showArrayThree = true

            
        } label: {
            Text("Array 3")
                .foregroundColor(showArrayThree ? .blue : .gray)
        }
        
    }
}


//
//enum Select: String, CaseIterable {
//    case arrayOne, arrayTwo, arrayThree
//
//    var returnText: String {
//        switch self {
//        case .arrayOne:
//            return "arrayOne"
//        case .arrayTwo:
//            return "arrayTwo"
//        case .arrayThree:
//            return "arrayThree"
//        }
//    }
//}


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
//                .foregroundColor(dictOfBools[buttonCase.rawValue] ? .blue : .gray)
        }
        
    }
}

enum Select: String, CaseIterable {
    case arrayOne = "arrayOne"
    case arrayTwo = "arrayTwo"
    case arrayThree = "arrayThree"
}

