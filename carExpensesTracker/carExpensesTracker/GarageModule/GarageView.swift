//
//  GarageView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI
import grpc

struct GarageView: View {
    
    @State var showingCarForm: Bool = false
    @ObservedObject private var carViewModel = CarViewModel()
    @ObservedObject private var garageViewModel = GarageViewModel()
    
    var body: some View {
        NavigationView {
            // Empty garage view
            if carViewModel.cars.count == 0 {
                EmptyGarageView()
            } else {
                // Existed cars in garage
                ZStack(alignment: .center) {
                    Image(garageViewModel.backgroundImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(carViewModel.cars, id: \.self) { car in
                            Button {
                                debugPrint("\(car.brand) selected, car id: \(car.id)")
                                garageViewModel.selectedCar = car
                            } label: {
                                HStack() {
                                    if garageViewModel.editBtnTapped {
                                        garageViewModel.showDeleteButton(car: car)
                                    }
                                    CarItemView(car: car)
                                }
                            }
                            .frame(width: 300, height: 120, alignment: .leading)
                            .padding()
                            .background(garageViewModel.selectedCar == car ? .ultraThickMaterial: .thinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
                        }
                    }
                    
                    // Toolbar items
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            Button(action: {
                                garageViewModel.editBtnTapped.toggle()
                            }) {
                                Image(garageViewModel.setupEditBtnImage())
                            }
                        }
                        
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Button(action: {
                                showingCarForm.toggle()
                            }) {
                                Image(garageViewModel.addBtnImage)
                            }
                            .sheet(isPresented: $showingCarForm) {
                                SetupFormView()
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
    
    private func addBtnTapped() {
        showingCarForm = true
    }
}

struct GarageView_Previews: PreviewProvider {
    static var previews: some View {
        GarageView()
    }
}
