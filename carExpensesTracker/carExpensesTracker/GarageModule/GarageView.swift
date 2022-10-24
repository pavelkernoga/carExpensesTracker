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
    @State private var editBtnTapped: Bool = false
    @ObservedObject private var carViewModel = CarViewModel()
    
    var body: some View {
        NavigationView {
            
            // Empty garage view
            if carViewModel.cars.count == 0 {
                EmptyGarageView()
            } else {
                // Existed cars in garage
                ZStack(alignment: .center) {
                    Image("garage")
                        .resizable()
                        .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        Group {
                            ForEach(carViewModel.cars, id: \.self) { car in
                                Button {
                                    print("\(car.brand) tapped")
                                } label: {
                                    HStack() {
                                        if editBtnTapped {
                                            Button {
                                                APIManager.shared.removeCarData(id: car.id)
                                            } label: {
                                                Image(systemName: "trash")
                                            }
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .buttonStyle(.borderedProminent)
                                            .tint(.red)
                                            Divider()
                                        }
                                        CarItemView(car: car)
                                    }
                                }
                            }
                            .frame(width: 300, height: 120, alignment: .leading)
                            .padding()
                            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
                        }
                    }
                    
                    // Toolbar items
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            Button(action: {
                                editBtnTapped.toggle()
                            }) {
                                Image(self.editBtnTapped == true ? "close" : "edit")
                            }
                        }
                        
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
