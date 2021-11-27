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
                ShowArrayOneButton(
                    showArrayOne: $vm.showArrayOne,
                    showArrayTwo: $vm.showArrayTwo,
                    showArrayThree: $vm.showArrayThree)
                    .onChange(of: vm.showArrayOne){ _ in vm.getArray()}
                
                ShowArrayTwoButton(
                    showArrayOne: $vm.showArrayOne,
                    showArrayTwo: $vm.showArrayTwo,
                    showArrayThree: $vm.showArrayThree)
                    .onChange(of: vm.showArrayTwo){ _ in vm.getArray()}
                
                ShowArrayThreeButton(
                    showArrayOne: $vm.showArrayOne,
                    showArrayTwo: $vm.showArrayTwo,
                    showArrayThree: $vm.showArrayThree)
                    .onChange(of: vm.showArrayThree){ _ in vm.getArray()}
            }
            
            List {
                ForEach(vm.contentArray, id: \.self) { content in
                    Text(content.self)
                }
                
            }
        }.onAppear {vm.getArray()}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
