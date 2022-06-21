//
//  ContentView.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import SwiftUI

struct ContentView: View {
    let interactor = MainInteractor()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                Task {
                    try await interactor.loadModules()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
