//
//  CarModels.swift
//  carExpensesTracker
//
//  Created by pavel on 30.09.22.
//

import Foundation

struct CarModels: Hashable {
    
    func getModels(brand: CarBrands) -> [String] {
        switch brand {
        case .Acura:
            return ["CL", "CSX", "ILX", "Integra", "Legend", "MDX", "RDX", "RL", "RSX", "SLX", "TL", "TLX", "TSX", "ZDX"]
        case .AlfaRomeo:
            return ["145", "146", "147", "155", "156", "159", "164", "166", "33", "75", "90", "Alfetta", "Brena", "Giulia", "Giulia Quadrifoglio", "Giulietta", "GT", "GTV", "MiTo", "Spider", "Sprint", "Stelvio", "Stelvio Quadrifoglio"]
        case .AstonMartin:
            return ["Cygnet", "DB11", "DB7", "DB9", "DBS", "DBX", "Rapide", "V12 Vantage", "V12 Zagato", "V8 Vantage", "V8 Zagato", "Vanquish", "Vantage", "Virage"]
        case .Audi:
            return ["100", "200", "50", "80", "90", "A1", "A2", "A3", "A4", "A4 Allroad", "A5", "A6", "A6 AllRoad", "A7", "A8", "Cabriolet", "Coupe", "e-tron", "e-tron Sportback", "Q2", "Q3", "Q3 Sportback", "Q4 e-tron", "Q4 Sportback e-tron", "Q5", "Q5 Sportback", "Q7", "Q8", "RS 2", "RS 3", "RS 4", "RS 5", "RS 6", "RS 7", "RS 8", "S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "SQ2", "SQ5", "SQ7", "SQ8", "TT", "TT RS", "TTS", "V8"]
        case .Bentley:
            return ["Arnage", "Azure", "Bentayga", "Brooklands", "Continental", "Continental GT", "Eight", "Flying Spur", "Mulsanne", "S", "Turbo R"]
        case .BMW:
            return ["1", "2", "2 Active Tourer", "2 Grand Tourer", "3", "4", "5", "6", "7", "8", "i3", "i4", "i7", "i8", "iX", "iX1", "iX3", "M2", "M3", "M4", "M5", "M6", "M8", "X1", "X2", "X3", "X3 M", "X4", "X4 M", "X5", "X5 M", "X6", "X6M", "X7", "XM", "Z3", "Z4", "Z8"]
        case .Bugatti:
            return ["Chiron", "Divo", "Veyron"]
        case .Buick:
            return ["Apollo", "Century", "Electra", "Enclave", "Encore", "Encore GX", "Envision", "GL8", "LaCrosse", "LeSabre", "Lucerne", "Park Avenue", "Reatta", "Regal", "Rendezvous", "Riviera", "Roadmaster", "Skylark"]
        case .Cadillac:
            return ["Allante", "ATS", "BLS", "Brogham", "Catera", "Cimarron", "CT6", "CTS", "CTS-V", "De Ville", "DTS", "Eldorado", "ELR", "Escalade", "Fleetwood", "Seville", "SRX", "STS", "XLR", "XT4", "XT5", "XT6"]
        case .Chery:
            return ["Amulet", "Arrizo 3", "Arrizo 5", "Arrizo 5e", "Arrizo 6", "Arrizo 7", "Arrizo 8", "Bonus (A13)", "Cowin", "CrossEastar", "CrossEastar (B14)", "EQ1", "EQ5 (S61)", "Exeed TXL", "Fora", "GX", "iCar", "IndiS", "Karry K60 EV", "Kimo (A1)", "M11", "Omoda 5", "Qriental Son (B11)", "QQ", "QQ6", "Tigo", "Tigo 2", "Tigo 3x", "Tigo 3xe", "Tiggo 4", "Tiggo 4 Pro", "Tiggo 5", "Tiggo 5x", "Tiggo 5x Pro", "Tiggo 7", "Tiggo 7 Pro"]
        case .Chevrolet:
            return ["Alero", "Astro", "Avalanche", "Aveo", "Beretta", "Blazer", "Bolt", "C/K", "Camaro", "Caprice", "Captiva", "Cavalier", "Celebrity", "City Express", "Cobalt", "Corsica", "Corvette", "Cruze", "CSV CR8", "Epica", "Equinox", "Evanda", "Express", "Fleetmaster", "HHR", "Impala", "Kalos", "Lacetti", "Lumina", "Malibu", "Matiz", "Metro", "Monte Carlo", "Niva", "Nova", "Nubria", "Optra", "Orlando", "Prozm", "S-10", "Silverado", "Sonic", "Spark", "Sprint", "SSR", "Suburban", "Tacuma", "Tahoe", "Tracker", "Trail Blazer", "Trans Sport", "Traverse", "Trax", "Uplander", "Van", "Venture", "Volt"]
        case .Chrysler:
            return ["180", "200", "300", "Aspen", "Caravan", "Cirrus", "Concorde", "Crossfire", "Daytona", "Grand Voyager", "Imperial", "Intrepid", "LeBaron", "LHS", "Neon", "New Yorker", "Pacifica", "Prowler", "PT Cruiser", "Saratoga", "Sebring", "Stratus", "Town & Country", "Viper", "Vision", "Voyager"]
        case .Citroen:
            return ["2 CV", "AX", "Berlingo", "BX", "C-Crosser", "C-Elysse", "C-Zero", "C1", "C15", "C2", "C25", "C3", "C3 AirCross", "C3 Picasso", "C4", "C4 AirCross", "C4 Cactus", "C4 Grand Picasso", "C4 Picasso", "C4 Spacetourer", "C5", "C5 Aircross", "C6", "C8", "CX", "DS3", "DS4", "DS5", "Evasion", "GS", "Jumper", "Jumpy", "Nemo", "Saxo", "SM", "SpaceTourer", "Visa", "Xantia", "XM", "Xsara", "Xsara Picasso", "ZX"]
        case .Dacia:
            return ["1300", "Dokker", "Duster", "Lodgy", "Logan", "Pick-Up", "Sandero"]
        case .Daewoo:
            return ["Damas", "Espero", "Evanda", "Gentra", "Kalos", "Korando", "Lacetti", "Lanos", "Leganza", "Magnus", "Matiz", "Musso", "Nexia", "Nubira", "Prince", "Racer", "Rezo", "sens", "Tacuma", "Tico"]
        case .DAF:
            return ["200", "400", "46", "66"]
        case .Daihatsu:
            return ["Applause", "Charade", "Charmant", "Copen", "Cuore", "Feroza", "Gran Move", "Hijet", "Materia", "Move", "Rocky", "Sirion", "Taft", "Terios", "Trevis", "Valera", "YRV"]
        case .Dodge:
            return ["Aspen", "Avenger", "Caliber", "Caravan", "Challenger", "Charger", "Colt", "D/W Series", "Dacota", "Dart", "Daytona", "Durango", "Dynasty", "Grand Caravan", "Intrepid", "Journey", "Magnum", "Monaco", "Neon", "Nitro", "Omni", "Ram", "Ram Van", "Shadow", "Spirit", "Sprinter", "Stealth", "Stratus", "Viper"]
        case .Ferrari:
            return ["360", "456", "458", "488", "550", "575", "599", "812", "California", "Enzo", "F12berlinetta", "F355", "F40", "F430", "F50", "FF", "GTC4Lusso", "LaFerrari", "Portofino", "Roma", "SF90 Stradale"]
        case .Fiat:
            <#code#>
        case .Ford:
            <#code#>
        case .Geely:
            <#code#>
        case .Genesis:
            <#code#>
        case .GMC:
            <#code#>
        case .GreatWall:
            <#code#>
        case .Haval:
            <#code#>
        case .Honda:
            <#code#>
        case .Hammer:
            <#code#>
        case .Hyundai:
            <#code#>
        case .Infinity:
            <#code#>
        case .IranKhodro:
            <#code#>
        case .Isuzu:
            <#code#>
        case .IVECO:
            <#code#>
        case .Jaguar:
            <#code#>
        case .Jeep:
            <#code#>
        case .Kia:
            <#code#>
        case .LADA:
            <#code#>
        case .Lamborghini:
            <#code#>
        case .Lancia:
            <#code#>
        case .LandRover:
            <#code#>
        case .Lexus:
            <#code#>
        case .Lifan:
            <#code#>
        case .Lincoln:
            <#code#>
        case .Lotus:
            <#code#>
        case .MAN:
            <#code#>
        case .Maserati:
            <#code#>
        case .Maybach:
            <#code#>
        case .Mazda:
            <#code#>
        case .McLaren:
            <#code#>
        case .MercedesBenz:
            <#code#>
        case .Mercury:
            <#code#>
        case .Mini:
            <#code#>
        case .Mitsubishi:
            <#code#>
        case .Nissan:
            <#code#>
        case .Opel:
            <#code#>
        case .Peugeot:
            <#code#>
        case .Plymouth:
            <#code#>
        case .Pontiac:
            <#code#>
        case .Porsche:
            <#code#>
        case .Ravon:
            <#code#>
        case .Renault:
            <#code#>
        case .RollsRoyce:
            <#code#>
        case .Rover:
            <#code#>
        case .Saab:
            <#code#>
        case .Scion:
            <#code#>
        case .Seat:
            <#code#>
        case .Skoda:
            <#code#>
        case .Smart:
            <#code#>
        case .SsangYong:
            <#code#>
        case .Subaru:
            <#code#>
        case .Suzuki:
            <#code#>
        case .Tesla:
            <#code#>
        case .Toyota:
            <#code#>
        case .Volkswagen:
            <#code#>
        case .Volvo:
            <#code#>
        case .ВАЗ:
            <#code#>
        case .Москвич:
            <#code#>
        case .УАЗ:
            <#code#>
        }
    }
}
