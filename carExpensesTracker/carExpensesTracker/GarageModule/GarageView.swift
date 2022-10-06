//
//  GarageView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI

struct GarageView: View {
    
    @State var showingCarForm: Bool = false
    @State var car: CarModel?

    var body: some View {
        NavigationView {
            
            if car?.brand == nil {
                Group {
                    ZStack {
                        Image("garage")
                            .resizable()
                            .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                        
                        
                        Button("Add your car") {
                            showingCarForm.toggle()
                        }
                        .multilineTextAlignment(.center)
                        .font(.headline)
                        .sheet(isPresented: $showingCarForm) {
                            SetupFormView()
                        }
                    }
                }
            } else {
//                Text("\(car.brand?.rawValue ?? "r")")
            }
            
        }
        .onAppear {
            print("\(car?.brand)")
        }
    }
    
    func addBtnTapped() {
        showingCarForm = true
    }
}

struct GarageView_Previews: PreviewProvider {
    static var previews: some View {
        GarageView()
    }
}
