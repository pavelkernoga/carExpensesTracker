//
//  CarModels.swift
//  carExpensesTracker
//
//  Created by pavel on 29.09.22.
//

import Foundation

enum CarBrands: String, CaseIterable {
    case Acura
    case alfaRomeo = "Alfa Romeo"
//    case Audi
//    case BMW
//    case Citroen
//    case Fiat
//    case Ford
//    case Honda
//    case Hyundai
//    case Kia
//    case LADA
//    case Mazda
//    case mercedesBenz = "Mercedes-Benz"
//    case Mitsubishi
//    case Nissan
//    case Opel
//    case Peugeot
//    case Renault
//    case Skoda
//    case Toyota
//    case Volkswagen
//    case Volvo
    
//    func getModel() -> String {
//        return self.rawValue
//    }
    
//    func getCarModels() ->[String] {
//        switch self {
//        case .Acura:
//            return ["TL", "TSX", "MDX"]
//        case .alfaRomeo:
//            return ["TT", "BB", "VV"]
//        }
//    }
}



enum Test: Hashable {    
    static func == (lhs: Test, rhs: Test) -> Bool {
        return lhs.getModel() == rhs.getModel()
    }
    
    func hash(into hasher: inout Hasher) {
          hasher.combine(getModel())
      }
    
    case acura(models: CarModelss)
    case honda(models: CarModelss)
    
    func getModel() -> [String] {
        switch self {
        case .acura(let models):
            return models.acuraModels
        case .honda(let models):
            return models.hondaModels
        }
    }
}

struct CarModelss {
    let acuraModels = ["TL", "TSX", "MDX"]
    let hondaModels = ["Civic", "Accord", "CR-V"]
    
}

struct CarModels: Hashable {
    func getModels(brand: CarBrands) -> [String] {
        switch brand {
        case .Acura:
            return ["TL", "TSX", "MDX"]
        case .alfaRomeo:
            return ["TT", "BB", "VV"]
        }
    }
}

//struct CarModels: Hashable {
//
//    func getModels(brands: CarBrands) -> [String] {
//        switch brands {
//        case .Acura:
//            return ["TL", "TSX"]
//        case .alfaRomeo:
//            return ["Test", "Test2"]
//        }
//    }
//
//}

extension CarBrands: Identifiable {
    var id: String { rawValue }
}


