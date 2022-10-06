//
//  CarViewModel.swift
//  carExpensesTracker
//
//  Created by pavel on 6.10.22.
//

import Foundation

class CarViewModel: ObservableObject {
    
    @Published var cars = [FirebaseCarModel]()
      
    private var db = APIManager.shared.configureFB()
      
      func fetchData() {
          db.collection("userCars").addSnapshotListener { (querySnapshot, error) in
              guard let cars = querySnapshot?.documents else {
                  print("No documents")
                  return
              }
              
              self.cars = cars.map { (queryDocumentSnapshot) -> FirebaseCarModel in
                  let data = queryDocumentSnapshot.data()
                  let brand = data["brand"] as? String ?? ""
                  let model = data["model"] as? String ?? ""
                  let productionYear = data["year"] as? Int ?? 0
                  let mileage = data["mileage"] as? String ?? ""
                  let mileageState = data["mileageState"] as? String ?? ""
                  return FirebaseCarModel(brand: brand, model: model, productionYear: productionYear, mileage: mileage, mileageState: mileageState)
              }
          }
      }
    
}
