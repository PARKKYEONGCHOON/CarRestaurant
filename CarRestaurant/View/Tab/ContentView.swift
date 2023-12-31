//
//  ContentView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2023/12/30.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject var coordinator: Coordinator = Coordinator.shared
    
    var body: some View {
        VStack {
            MainTabView()
        }
        .padding()
        .onAppear {
                    Coordinator.shared.checkIfLocationServiceIsEnabled()
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
