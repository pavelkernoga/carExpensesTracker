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
            Group {
                ZStack {
                    Image("garage")
                        .resizable()
                        .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                    
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
                            VStack(alignment: .leading) {
                                Text(car.brand).foregroundColor(Color.white)
                                Text(car.model).foregroundColor(Color.white)
                                Text("\(Constants.numberFormatter.string(for: car.productionYear) ?? "2022")").foregroundColor(Color.white)
                                Text(car.mileage).foregroundColor(Color.white)
                                Text(car.mileageState).foregroundColor(Color.white)
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
