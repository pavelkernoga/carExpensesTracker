//
//  GarageViewModel.swift
//  carExpensesTracker
//
//  Created by pavel on 15.12.22.
//

import Foundation
import SwiftUI

class GarageViewModel: ObservableObject {
    
    @Published var editBtnTapped: Bool = false
    @Published var selectedCar: FirebaseCarModel?
    
    // images
    let backgroundImage = "garage"
    let binImage = "trash"
    let addBtnImage = "add_car"
    
    func setupEditBtnImage() -> String {
       return self.editBtnTapped == true ? "close" : "edit"
    }
    
    func showDeleteButton(car: FirebaseCarModel) -> some View {
        return AnyView(Button(
            action: {
                APIManager.shared.removeCarData(id: car.id)
            },
            label: {
                Image(systemName: binImage)
            })
                        .frame(width: 50, height: 50, alignment: .center)
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                       
        )
    }
    
}
