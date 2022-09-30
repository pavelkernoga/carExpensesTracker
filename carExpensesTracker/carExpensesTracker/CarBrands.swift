//
//  CarModels.swift
//  carExpensesTracker
//
//  Created by pavel on 29.09.22.
//

import Foundation

enum CarBrands: String, CaseIterable {
    // A
    case Acura; case AlfaRomeo = "Alfa Romeo"; case AstonMartin = "Aston Martin"; case Audi
    
    // B
    case Bentley; case BMW; case Bugatti; case Buick;
    
    // C
    case Cadillac; case Chery; case Chevrolet; case Chrysler; case Citroen
    
    // D
    case Dacia; case Daewoo; case DAF; case Daihatsu; case Dodge
    
    // F
    case Ferrari; case Fiat; case Ford
    
    // G
    case Geely; case Genesis; case GMC; case GreatWall = "Great Wall"
    
    // H
    case Haval; case Honda; case Hammer; case Hyundai
    
    // I
    case Infinity; case IranKhodro = "Iran Khodro"; case Isuzu; case IVECO
    
    // J
    case Jaguar; case Jeep
    
    // K
    case Kia
    
    // L
    case LADA; case Lamborghini; case Lancia; case LandRover = "Land Rover"; case Lexus; case Lifan; case Lincoln; case Lotus
    
    // M
    case MAN; case Maserati; case Maybach; case Mazda; case McLaren; case MercedesBenz = "Mercedes-Benz"; case Mercury; case Mini; case Mitsubishi
    
    // N
    case Nissan
    
    // O
    case Opel
    
    // P
    case Peugeot; case Plymouth; case Pontiac; case Porsche
    
    // R
    case Ravon; case Renault; case RollsRoyce = "Rolls-Royce"; case Rover
    
    // S
    case Saab; case Scion; case Seat; case Skoda; case Smart; case SsangYong; case Subaru; case Suzuki
    
    // T
    case Tesla; case Toyota
    
    // V
    case Volkswagen; case Volvo
    
    case ВАЗ; case Москвич; case УАЗ
}

extension CarBrands: Identifiable {
    var id: String { rawValue }
}
