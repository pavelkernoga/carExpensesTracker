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
                
                Text("Model:").foregroundColor(.black).font(.headline)
                
                // Car models
                
                    List(model.getModels(brand: selectedBrand), id: \.self) { model in
                    HStack {
                        Text("\(model)").frame(maxWidth: .infinity, alignment: .center)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 1))
                        
                        
                        .frame(height: 44)
                        Spacer()
                        
                        Button("") { selectedModel = model }
                        .background(selectModel(id: model))
                    }
                    .foregroundColor(.green)
                    .listRowSeparator(.hidden)
                    .listStyle(.insetGrouped)
                    }
                
//                    .listStyle(.automatic)
                
                // working
//                Picker(selection: $model, label: Text("Model")) {
//                    List(model.getModels(brand: selectedBrand), id: \.self) { model in
//                        Text(model).tag(model)
//                            .onTapGesture {
//                                if selectedModel.contains(model) {
//                                    selectedModel.remove(model)
//                                } else {
//                                    selectedModel.insert(model)
//                                }
//                                print(model)
//                            }
//                    }
                    
                    //working also
//                    ForEach(models.getModels(brands: brand), id: \.self) { model in
//                        Text(model).tag(model)
//                    }
//                }
                
            }
            
            // Navigation items
            .navigationBarItems(
                leading: Button(action: self.cancelButtontapped) {
                    Text("Cancel").foregroundColor(.red)},
                trailing: Button(action: self.saveButtontapped) {
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
    
    private func cancelButtontapped() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func saveButtontapped() {
        print("save car into db")
    }

}

struct CarFormView_Previews: PreviewProvider {
    static var previews: some View {
        CarFormView()
    }
}
