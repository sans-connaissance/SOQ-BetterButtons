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
                
                SortButton(name: .arrayOne, bools: $vm.bools)
                    .onChange(of: vm.bools["arrayOne"]){ _ in vm.getArray()}
                SortButton(name: .arrayTwo, bools: $vm.bools)
                    .onChange(of: vm.bools){ _ in vm.getArray()}
                SortButton(name: .arrayThree, bools: $vm.bools)
                    .onChange(of: vm.bools){ _ in vm.getArray()}
            
            }
            
            List {
                ForEach(vm.contentArray, id: \.self) { content in
                    Text(content.self)
                }
                
            }
        }
        .onAppear {vm.setButtons()}
        .onAppear {vm.getArray()}
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
