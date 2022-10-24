//
//  EmptyGarageView.swift
//  carExpensesTracker
//
//  Created by pavel on 24.10.22.
//

import SwiftUI

struct EmptyGarageView: View {
    @State private var showingCarForm: Bool = false
    
    var body: some View {
        ZStack(alignment: .center) {
            Image("empty_garage")
                .resizable()
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            
            Text("No available cars\nPlease add your car to the garage")
                .multilineTextAlignment(.center)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        // add button
                        Button(action: {
                            showingCarForm.toggle()
                        }) {
                            Image("add_car")
                        }
                        .sheet(isPresented: $showingCarForm) {
                            SetupFormView()
                        }
                    }
                }
        }
    }
}

struct EmptyGarageView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyGarageView()
    }
}
