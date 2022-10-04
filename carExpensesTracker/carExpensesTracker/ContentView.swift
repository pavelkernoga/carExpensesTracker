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
                    Label("My Garage", image: "my_garage")
                }
                .tag(0)
            
            Expenses()
                .tabItem {
                   Label("Expenses", image: "wallet")
                }
                .tag(1)
        }
        .accentColor(.white)
        
        .onAppear {
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .selected)
            UITabBar.appearance().unselectedItemTintColor = UIColor.white
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
