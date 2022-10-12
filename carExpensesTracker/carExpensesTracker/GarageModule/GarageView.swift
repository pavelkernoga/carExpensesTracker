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
            
            // Empty garage view
            if carViewModel.cars.count == 0 {
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
            } else {
                // Existed cars in garage
                ZStack(alignment: .center) {
                    Image("garage")
                        .resizable()
                        .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack() {
                            ForEach(carViewModel.cars, id: \.self) { car in
                                Button {
                                    print("\(car.brand) tapped")
                                } label: {
                                    CarItemView(car: car)
                                }
                            }
                            .padding()
                            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
                        }
                    }
                    
                    // Toolbar items
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
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
