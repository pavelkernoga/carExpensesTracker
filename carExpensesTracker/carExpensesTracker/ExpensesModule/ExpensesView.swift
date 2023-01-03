//
//  LogsView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI

struct ExpensesView: View {
    
    @State private var amountExpenses = 0
    @State private var cars = [""]
    @State private var selectedCar = ""
    @ObservedObject private var carViewModel = CarViewModel()
    
    
    var body: some View {
        ZStack(alignment: .center) {
            Image("expenses")
                .resizable()
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack {
                Group {
                    // Cars picker
                    Picker("Please choose a car", selection: $selectedCar) {
                        ForEach(cars, id: \.self) { item in
                            Text(item)
                        }
                    }
                    
                    // Total expenses view
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Amount of total spending").foregroundColor(.white).font(.largeTitle)
                        Text("for \(selectedCar) - \(amountExpenses) $")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding()
                    
                }
                .frame(width: UIScreen.main.bounds.width - 25, alignment: .center)
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))
                .padding()
                
                // Expenses buttons
                ExpenseButtonsView()
            }
        }
        
        .onAppear {
            self.carViewModel.fetchData()
            setupCarsArray()
        }
        
    }
    
    private func setupCarsArray() {
        cars.removeAll()
        for car in carViewModel.cars {
            cars.append("\(car.brand) \(car.model)")
        }
        
        print(cars)
        
        if !cars.isEmpty && selectedCar == "" {
            selectedCar = cars[0]
        }
    }
}

struct LogsView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
