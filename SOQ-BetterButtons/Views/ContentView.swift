//
//  ContentView.swift
//  SOQ-BetterButtons
//
//  Created by David Malicke on 11/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ContentViewModel()

    var body: some View {
        VStack {
            HStack {
                ForEach(Select.allCases, id: \.self) { name in
                    SortButton(name: name, vm: vm)
                }
            }
            List {
                ForEach(vm.contentArray, id: \.self) { content in
                    Text(content.self)
                }
            }
        }
    }
}

