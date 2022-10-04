//
//  CarFormView.swift
//  carExpensesTracker
//
//  Created by pavel on 29.09.22.
//

import SwiftUI

struct SetupFormView: View {

    @Environment(\.presentationMode)
    var presentationMode
    var navigationTitle = "Set up your car"
    
    @State var selectedBrand: CarBrands = .Acura
    @State var model = CarModels()
    @State var selectedModel: String = ""
    @State var yearOfProduction = Int()
    @State var mileage: String = ""
    @State var mileageState: MileageStates = .km
    
    
    private let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.usesGroupingSeparator = false
        return nf
    }()
    
    var body: some View {
        NavigationView {
            Form {
                // Car brand
                Picker(selection: $selectedBrand, label: Text("Brand").foregroundColor(.black)) {
                    ForEach(CarBrands.allCases) { brand in
                        Text(brand.rawValue).tag(brand)
                    }
                }
                
                // Car model
                Picker(selection: $selectedModel, label: Text("Model").foregroundColor(.black)) {
                    ForEach(model.getModels(brand: selectedBrand), id: \.self) { model in
                        HStack {
                            Text(model).tag(model)
                                .onTapGesture {
                                    selectedModel = model
                                }
                        }
                    }
                }
                
                // Year of production
                    Picker(selection: $yearOfProduction, label: Text("Year of production")) {
                        ForEach((1950..<2022).reversed(), id: \.self) { year in
                            HStack {
                                Text("\(numberFormatter.string(for: year) ?? "2022")")
                                    .onTapGesture {
                                        yearOfProduction = year
                                    }
                            }
                        }
                    }
                
                // Mileage
                HStack {
                    Text("Mileage").keyboardType(.numbersAndPunctuation)
                    TextField("0", text: $mileage).multilineTextAlignment(.center)
                    Picker("", selection: $mileageState) {
                        ForEach(MileageStates.allCases) { type in
                            Text("\(type == .km ? "km" : "miles")")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
        
            }
            
            // Navigation items
            .navigationBarItems(
                leading: Button(action: self.cancelButtonTapped) {
                    Text("Cancel").foregroundColor(.red)},
                trailing: Button(action: self.saveButtonTapped) {
                    Text("Save")}
            ).navigationBarTitle(navigationTitle)
        }
        
    }
    
    private func cancelButtonTapped() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func saveButtonTapped() {
        print("\(selectedBrand) \(selectedModel), year: \(yearOfProduction), mileage: \(mileage) \(mileageState)")
    }

}

struct CarFormView_Previews: PreviewProvider {
    static var previews: some View {
        SetupFormView()
    }
}
