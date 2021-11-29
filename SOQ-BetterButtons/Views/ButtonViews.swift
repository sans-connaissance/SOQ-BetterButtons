//
//  Buttons.swift
//  UMSalaryPubV4
//
//  Created by David Malicke on 11/17/21.
//

import SwiftUI

struct SortButton: View {
    var name: Select
    let vm: ContentViewModel
    
    var body: some View {
        Button {
            vm.updateContentArray(select: name)
        } label: {
            Text(name.rawValue)
        }
    }
}

enum Select: String, CaseIterable {
    case arrayOne, arrayTwo, arrayThree
}

