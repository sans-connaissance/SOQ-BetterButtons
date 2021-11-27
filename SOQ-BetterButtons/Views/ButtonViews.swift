//
//  Buttons.swift
//  UMSalaryPubV4
//
//  Created by David Malicke on 11/17/21.
//

import SwiftUI


struct ShowArrayOneButton: View {
    
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




