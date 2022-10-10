//
//  GarageView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI
import grpc

struct GarageView: View {
    
    @State private var showingCarForm: Bool = false
    @ObservedObject private var carViewModel = CarViewModel()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                Image("garage")
                    .resizable()
                    .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        Button("Add your car") {
                            showingCarForm.toggle()
                        }
                        .multilineTextAlignment(.center)
                        .font(.headline)
                        .sheet(isPresented: $showingCarForm) {
                            SetupFormView()
                        }
                        
                        // test
                        ForEach(carViewModel.cars, id: \.self) { car in
                            VStack {
                                CarItemView(car: car)
                                    .padding()
                            }
                        }
                    }
                }
            }
            
        }
        .onAppear {
            self.carViewModel.fetchData()
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
