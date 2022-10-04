//
//  CarFormView.swift
//  carExpensesTracker
//
//  Created by pavel on 29.09.22.
//

import SwiftUI

struct CarFormView: View {

    @State var selectedBrand: CarBrands = .Acura
    @State var model = CarModels()
    @State var selectedModel: String?

    
    @Environment(\.presentationMode)
    var presentationMode
    
    var navigationTitle = "Setup your car"
    
    var body: some View {
        
        NavigationView {
            
            Form {
                // Car brand
                Picker(selection: $selectedBrand, label: Text("Brand").foregroundColor(.black).font(.headline)) {
                    ForEach(CarBrands.allCases) { brand in
                        Text(brand.rawValue).tag(brand)
                    }
                }
                
                // Car model
                List() {
                    Section(header: Text("Model:").foregroundColor(.black).font(.headline)) {
                        ForEach(model.getModels(brand: selectedBrand), id: \.self) { model in
                            HStack {
                                Text("\(model)").frame(maxWidth: .infinity, alignment: .center)
                                Button("") { selectedModel = model }
                                .background(selectModel(id: model))
                            }
                            .listRowBackground(Colors.listRowBackroundCustomColor)
                            .foregroundColor(.black)
                            .listRowSeparator(.visible)
                            .listRowSeparatorTint(.gray)
                        }
                    }
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
    
    func selectModel(id: String) -> some View {
        NavigationLink("",
                       destination: Text("\(selectedBrand.rawValue) \(id) Selected"),
            tag: id,
            selection: $selectedModel
        ).hidden()
    }
    
    private func cancelButtonTapped() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func saveButtonTapped() {
        print("save car into db")
    }

}

struct CarFormView_Previews: PreviewProvider {
    static var previews: some View {
        CarFormView()
    }
}
