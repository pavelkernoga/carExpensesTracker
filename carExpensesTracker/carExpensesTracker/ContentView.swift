//
//  ContentView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                
        // MARK: - Tabs
        
        TabView {
            GarageView()
                .tabItem {
                    VStack {
                        Text("My garage")
                    }
                }
                .tag(0)
            
            LogsView()
                .tabItem {
                    VStack {
                        Text("Logs")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
