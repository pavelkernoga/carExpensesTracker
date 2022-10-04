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
            return ["124", "124 Spider", "125", "126", "238", "500", "500e", "500L", "500X", "900T", "Albea", "Barchetta", "Brava", "Bravo", "Cinquecento", "Coupe", "Croma", "Doblo", "Ducato", "Florino", "Freemont", "Grande Punto", "Idea", "Lancia", "Linea", "Marea", "Multipla", "Palio", "Panda", "Punto", "Qubo", "Scudo", "Seicento", "Siena", "Stilo", "Talento", "Tempra", "Tipo", "Ulysse", "Uno", "X 1/9"]
        case .Ford:
            return ["Aerostar", "B-Max", "Bronco", "C-Max", "Capri", "Consul", "Contour", "Crown Victoria", "E450", "Econoline", "Econovar", "EcoSport", "Edge", "Escape", "Escort", "Excursion", "Expedition", "Explorer", "F-Series", "Fairlane", "Fairmont", "Falcon", "Fiesta", "Fiesta ST", "Five Hundred", "Flex", "Focus", "Focus RS", "Focus ST", "Freestar", "Freestyle", "Fusion", "Fusion (North America)", "Galaxy", "Granada", "Grand C-Max", "GT", "Ka", "Kuga", "Maverick", "Mercury", "Mondeo", "Mustang", "Mustang Match-E", "Orion", "Probe", "Puma", "Ranger", "S-Max", "Scorpio", "Sierra", "Taunus", "Taurus", "Tempo", "Thunderbird", "Tourneo", "Tourneo Connect", "Tourneo Custom", "Transit", "Transit Connect", "Transit Custom", "V8", "Windstar"]
        case .Geely:
            return ["Atlas", "Atlas Pro", "CK", "Coolray", "Emgrand 7", "Emgrand 8", "Emgrand EC7", "Emgrand EV450", "Emgrand GT", "Emgrand X7", "FC", "GC6", "GE", "Geometry", "GS", "Kandi EX3 EV", "LC", "LC (Panda) Cross", "MK", "MK Cross", "SC&", "Tugella"]
        case .Genesis:
            return ["EQ900", "G70", "G80", "G90", "GV60", "GV70", "GV80"]
        case .GMC:
            return ["Acadia", "Canyon", "Envoy", "Jimmy", "Safari", "Savana", "Sierra", "Sonoma", "Suclone", "Terrain", "Typhoon", "Vandura", "Yukon"]
        case .GreatWall:
            return ["Coolbear", "Deer", "Florid", "Hover", "Hover H3", "Hover H5", "Hover H6", "Hover M4", "Pagasus", "Peri", "Safe", "Sailor", "Sing RUV", "Voleex C30", "Wingle"]
        case .Haval:
            return ["Chitu", "Chulian", "Dagou", "Dargo", "F5", "F7", "F7x", "H1", "H2", "H2s", "H4", "H4 Pro", "H5", "H6", "H6 Coupe", "H6 GT", "H6 HEV", "H6S", "H7", "H8", "H9", "Jolion", "Kugou", "M6", "M6 Plus"]
        case .Honda:
            return ["Accord", "Ballade", "City", "Civic", "Clarity", "Concerto", "CR-V", "CR-X", "CR-Z", "Crosstour", "Element", "Elysion", "Fit", "FR-V", "HR-V", "Insight", "Integra", "Jazz", "Legend", "Logo", "M-NV", "NSX", "Odyssey", "Passport", "Pilot", "Prelude", "Ridgeline", "S2000", "S660", "Shuttle", "Stream", "Vigor", "X-NV"]
        case .Hammer:
            return ["H1", "H2", "H3"]
        case .Hyundai:
            return ["Accent", "Atos", "Avante", "Azera", "Centennial", "Coupe", "Creta", "Elantra", "Equus", "Excel", "Galloper", "Genesis", "Genesis Coupe", "Getz", "Grand Starex", "Grandeur", "H-1", "H-100", "H200", "Hd", "i10", "i20", "i30", "i30N", "i40", "IONIQ", "IONIQ 5", "ix20", "ix35", "ix55", "Kona", "Kona Electric", "Lantra", "Matrix", "Maxcruz", "Palisade", "Pony", "Porter", "S-Coupe", "Santa Fe", "Starex", "Terracan", "Tiburon", "Trajet", "Tucson", "Veloster", "Veracruz", "XG"]
        case .Infinity:
            return ["EX", "FX", "G", "I", "JX", "M", "Q30", "Q40", "Q45", "Q50", "Q60", "Q70", "QX30", "QX4", "QX50", "QX56", "QX60", "QX70", "QX80"]
        case .IranKhodro:
            return ["Samand"]
        case .Isuzu:
            return ["Amigo", "Aska", "Axiom", "Campo", "D-Max", "Gemini", "Midi", "Rodeo", "Stylus", "TF (Pickup)", "Trooper", "VehiCross"]
        case .IVECO:
            return ["Daily"]
        case .Jaguar:
            return ["E-Pace", "E-Type", "F-Pace", "F-Type", "I-Pace", "Mark 2", "S-Type", "X-Type", "XE", "XF", "XFR", "X~J", "XJR", "XK", "XKR"]
        case .Jeep:
            return ["Cherokee", "CJ", "Comanche", "Commander", "Compass", "Grand Cherokee", "Liberty", "Patriot", "Renegade", "Wagoneer", "Willys", "Wrangler"]
        case .Kia:
            return ["Avella", "Besta", "Cadenza", "Capital", "Carens", "Carnival", "Cee'd", "Ceed GT", "Cerato", "Claruus", "e-Soul", "Elan", "Forte", "Joice", "К-серия", "K3", "K5", "K7", "K9", "K900", "Magentis", "Mentor", "Mohave", "Niro", "Opirus", "Optima", "Picanto", "Pregio", "Pride", "Proceed", "Quoris", "Ray", "Retona", "Rio", "Sedona", "Seltos", "Sephia", "Shuma", "Sorento", "Soul", "Soul EV", "Spectra", "Sportage", "Stinger", "Venga", "X-Trek", "Xceed"]
        case .LADA:
            return ["4x4", "Granta", "Kalina", "Largus", "Niva", "Priora", "Vesta", "XRAY"]
        case .Lamborghini:
            return ["Aventador", "Countach", "Diablo", "Gallardo", "Huracan", "LM002", "Murcielago", "Reventon", "Urus"]
        case .Lancia:
            return ["Beta", "Dedra", "Delta", "Flaminia", "Fulvia", "Gamma", "Kappa", "Lybra", "Musa", "Phedra", "Prisma", "Stratos", "Thema", "Thesis", "Voyager", "Ypsilon"]
        case .LandRover:
            return ["Defender", "Discovery", "Discovery Sport", "Freelander", "Range Rover", "Range Rover Evoque", "Range Rover Sport", "Range Rover Velar", ""]
        case .Lexus:
            return ["CT", "ES", "GS", "GS F", "GX", "HS", "IS", "IS F", "LC", "LS", "LX", "NX", "RC", "RC F", "RX", "SC", "UX"]
        case .Lifan:
            return ["Breez (520), Cebrium", "Celliya", "Murman", "MyWay", "Smily", "Solano", "X50", "X60", "X70", "X80"]
        case .Lincoln:
            return ["Aviator", "Blackwood", "Continental", "LS", "Mark LT", "Mark VII", "Mark VIII", "MKC", "MKS", "MKT", "MKX", "MKZ", "Navigator", "Town Car", "Zephyr"]
        case .Lotus:
            return ["Elise", "Esprit", "Europa", "Europa S", "Europa SE", "Evora", "Exige"]
        case .MAN:
            return ["TGE"]
        case .Maserati:
            return ["228", "3200GT", "Coupe", "Ghibli", "GranTurismo", "Levante", "Quattroporte"]
        case .Maybach:
            return ["57", "62"]
        case .Mazda:
            return ["121", "2", "3", "3 MPS", "323", "5", "6", "6 MPS", "929", "B-серия", "BT-50", "Capella", "CX-3", "CX-30", "CX-5", "CX-50", "CX-7", "CX-9", "Demio", "Е-серия", "Milenia", "MPV", "MX-3", "MX-30", "MX-5", "MX-6", "Navajo", "Premacy", "Protege", "RX-7", "RX-8", "Tribute", "Xedos 6", "Xedos 9"]
        case .McLaren:
            return ["540C", "570GT", "570S", "600LT", "650S", "675LT", "720S", "F1", "GT", "MP4-12C", "P1", "Senna"]
        case .MercedesBenz:
            return ["170V (W136)", "190 (W201)", "A-klasse AMG", "A-Класс", "AMG GT", "AMG ONE", "В-Класс", "С-klasse AMG", "C-Kласс", "Citan", "CL-klasse AMG", "СL-Класс", "CLA-klasse AMG", "CLA-Класс", "CLC-Класс", "CLS-klasse AMG", "CLS-Класс", "E-klasse AMG", "Е-Класс", "EQA", "EQB", "EQC", "EQE", "EQS", "EQV", "G-klasse AMG", "G-Класс", "GL-klasse AMG", "GL-Класс", "GLA-klasse AMG", "GLA-Класс", "GLB-klasse AMG", "GLA-Класс", "GLC AMG", "GLC Coupe", "GLC-Класс", "GLE", "GLE AMG", "GLE Coupe", "GLE Coupe AMG", "GLK-Класс", "GLS-klasse AMG", "GLS-Класс", "M-klasse AMG", "M-Класс", "MB100", "R-klasse AMG", "R-Класс", "S-klasse AMG", "S-Класс", "SL-klasse AMG", "SL-Класс", "SLC-Класс", "SLK-klasse AMG", "SLK-Класс", "SLS AMG", "Sprinter", "T1", "T2", "Unimog", "V-Класс", "Vaneo", "Vario", "Viano", "Vito", "W110", "W114/115", "Х-Класс"]
        case .Mercury:
            return ["Capri", "Colony Park", "Cougar", "Grand Marquis", "Marauder", "Mariner", "Milan", "Montego", "Monterey", "Mountaineer", "Mystique", "Sable", "Topaz", "Tracer", "Villager"]
        case .Mini:
            return ["1000", "1300", "Cabrio", "Cabrio JCW", "Cabrio D", "Cabrio One", "Cabrio S", "Cabrio SD", "Clubman", "Clubman D", "Clubman JCW", "Clumban One", "Clubman S", "Clubman SD", "Cooper", "Cooper JCW", "Cooper One", "Cooper S", "Cooper SE", "Countryman", "Countryman JCW", "Countryman S", "Paceman"]
        case .Mitsubishi:
            return ["3000 GT", "ASX", "Carisma", "Colt", "Delica", "Diamante", "Eclipse", "Eclipse Cross", "Endeavor", "Galant", "Grandis", "i-MiEV", "L200", "L300", "L400", "Lancer", "Lancer Evolution", "Legnum", "Mirage", "Montero", "Outlander", "Pajero", "Pajero Pinin", "Pajero Sport", "Raider", "RVR", "Sapporo", "Sigma", "Space Gear", "Space Runner", "Space Star", "Space Wagon"]
        case .Nissan:
            return ["100NX", "200NX", "240SX", "280ZX", "300ZX", "350Z", "370Z", "Almera", "Almera Tino", "Altima", "Armada", "Bluebird", "Cabstar", "Cedric", "Cefiro", "Cherry", "Cube", "Frontier", "GT-R", "Interstar", "Juke", "Kicks", "L50", "Laurel", "Leaf", "Liberta Villa", "Maxima", "Micra", "Murano", "Navara", "Note", "NP300", "NV", "NV200", "Pathfinder", "Patrol", "Pixo", "Prairie", "Primastar", "Primera", "Pulsar", "Qashqai", "Qashqai+2", "Quest", "Rogue", "Sentra", "Serena", "Silvia", "Skyline", "Stanza", "Sunny", "Sylphy", "Teana", "Terrano", "Tiida", "Tino", "Titan", "Trade", "Urvan", "Vanette", "Versa", "X-Trail", "Xterra"]
        case .Opel:
            return ["Adam", "Agila", "Ampera", "Antara", "Arena", "Ascona", "Astra", "Astra OPC", "Bedford Blitz", "Calibra", "Campo", "Cascada", "Combo", "Commodore", "Corsa", "Corsa OPC", "Crossland X", "Diplomat", "Frontera", "Grandland X", "GT", "Insignia", "Insignia OPC", "Kadett", "Kapitan", "Karl", "Manta", "Meriva", "Mokka", "Mokka-e", "Monterey", "Monza", "Movano", "Olympia", "Omega", "Rekord", "Senator", "Signum", "Sintra", "Speedster", "Tigra", "Vectra", "Vectra OPC", "Vivaro", "Zafira", "Zafira Life", "Zafira OPC"]
        case .Peugeot:
            return ["1007", "104", "106", "107", "108", "2008", "204", "205", "206", "207", "208", "3008", "301", "304", "305", "306", "307", "308", "309", "4007", "4008", "404", "405", "406", "407", "408", "5008", "504", "505", "508", "604", "605", "607", "806", "807", "Bipper", "Boxer", "Expert", "iOn", "J5", "J9", "Pars", "Partner", "RCZ", "Traveller"]
        case .Plymouth:
            return ["Breeze", "Horizon", "Laser", "Neon", "Reliant", "Sundance", "Voyager"]
        case .Pontiac:
            return ["6000", "Acadian", "Aztek", "Bonneville", "Fiero", "Firebird", "G3", "G5", "G6", "G8", "Grand Am", "Grand Prix", "GTO", "LeMans", "Montan", "Solstice", "Sunbird", "Sunfire", "Torrent", "Trans Sport", "Vibe"]
        case .Porsche:
            return ["356", "718 Boxter", "718 Cayman", "718 Spyder", "911", "911 GT2", "911 GT3", "911 R", "912", "914", "918 Spyder", "924", "928", "944", "959", "968", "Boxter", "Carrera GT", "Cayenne", "Cayman", "Cayman GT4", "Macan", "Panamera", "Taycan"]
        case .Ravon:
            return ["Gentra", "Matiz", "Nexia R3", "R2", "R4"]
        case .Renault:
            return ["11", "14", "17", "18", "19", "20", "21", "25", "30", "4", "5", "6", "9", "Arkana", "Aventime", "Captur", "City K-ZE", "Clio", "Clio RS", "Dokker", "Duster", "Espace", "Express", "Fluence", "Fuego", "Grand Espace", "Grand Scenic", "Kadjar", "Kangoo", "Kaptur", "Koleos", "Laguna", "Latitude", "Lodgy", "Logan", "Manager", "Mascott", "Master", "Maxity", "Megane", "Megane RS", "Messenger", "Modus", "Rapid", "Safrane", "Sandero", "Scenic", "Symbol", "Talisman", "Thalia", "Trafic", "Twingo", "Twizy", "Vel Satis", "Wind", "Zoe"]
        case .RollsRoyce:
            return ["20/25", "Cullinan", "Dawn", "Ghost", "Phantom", "Silver Cloud", "Silver Spirit", "Wraith"]
        case .Rover:
            return ["100 Series", "200 Series", "25", "400 Series", "45", "600 Series", "75", "800 Series", "Maestro", "Metro", "Mini", "Montego", "SD1", "Streetwise"]
        case .Saab:
            return ["9-2X", "9-3", "9-5", "9-7X", "900", "9000", "99"]
        case .Scion:
            return ["FR-S", "iA", "iM", "tC", "xA", "xB", "xD"]
        case .Seat:
            return ["Alhambra", "Altea", "Arosa", "Ateca", "Cordoba", "Exeo", "Ibiza", "Ibiza Cupra", "Inca", "Leon", "Leon Cupra", "Malaga", "Marbella", "Mii", "Mii electric", "Terra", "Toledo"]
        case .Skoda:
            return ["105/120/130", "1200", "1203", "Citigo", "Fabia", "Fabia RS", "Favorit", "Felicia", "Forman", "Karoq", "Kodiac", "Octavia", "Octavia RS", "Practic", "Rapid", "Roomster", "Superb", "Yeti"]
        case .Smart:
            return ["Crossblade", "EQ forfour", "EQ fortwo", "Forfour", "Fortwo", "Roadster"]
        case .SsangYong:
            return ["Actyon", "Chairman", "Istana", "Kallista", "Korando", "Korando Family", "Kyron", "Musso", "Rexton", "Rodius", "Stavic"]
        case .Subaru:
            return ["Ascent", "Baja", "BRZ", "Forester", "Impreza", "Impreza WRX", "Impreza WRX STI", "Justy", "Legacy", "leone", "Libero", "Outback", "SVX", "Trezia", "Tribeca", "Vivio", "WRX", "WRX STI", "XV"]
        case .Suzuki:
            return ["Aerio", "Alto", "Baleno", "Carry", "Equator", "Forenza", "Grand Vitara", "Ignis", "Jimny", "Kazashi", "Liana", "Reno", "Samurai", "Splash", "Swift", "SX4", "Verona", "Vitara", "Wagon R", "X-90", "XL7"]
        case .Tesla:
            return ["Cybertrack", "Model 3", "Model S", "Model X", "Model Y"]
        case .Toyota:
            return ["4Runner", "86", "Alphard", "Altezza", "Auris", "Avalon", "Avensis", "Avensis Verso", "Aygo", "bB", "CHR", "Camry", "Camry Solara", "Carina", "Celica", "Celsior", "Chaser", "Corolla", "Corolla Verso", "Corona", "Cressida", "Cresta", "Crown", "Echo", "Fj Cruiser", "Fortuner", "Hiace", "Highlander", "Hilux", "IQ", "Land Cruiser", "Land Cruiser Prado", "Lite Ace", "Mark II", "Matrix", "Model F", "MR2", "Paceo", "Picnic", "Previa", "Prius", "Prius C", "Prius Prime", "Prius V(+)", "ProAce", "RAV4", "Sequoia", "Sienna", "Soarer", "Starlet", "Supra", "Tacoma", "Tank", "Tercel", "TownAce", "Tundra", "Urban Cruiser", "Venza", "Verso", "Verso-S", "Vista", "Yaris", "Yaris Verso"]
        case .Volkswagen:
            return ["181", "Amarok", "Arteon", "Atlas", "Atlas Cross Sport", "Beetle", "Bora", "Caddy", "California", "Caravelle", "Corrado", "Crafter", "Derby", "e-Bora", "e-Golf", "e-Lavida", "Eos", "Fox", "Gol", "Golf", "Golf GTD", "Golf GTE", "Golf GTI", "Golf Plus", "Golf R", "Golf R32", "Golf Sportsvan", "ID.3", "ID.4", "ID.6", "Iltis", "Jetta", "Karmann Ghia", "LT", "Lupo", "Multivan", "Passat", "Passat (North America)", "Passat CC", "Phaeton", "Pointer", "Polo", "Rabbit", "Routan", "Santana", "Scirocco", "Scirocco R", "Sharan", "T-Cross", "T-Roc", "Taos", "Taro", "Teramont", "Tharu", "Tiguan", "Touareg", "Touran", "Transporter", "up!", "Vento"]
        case .Volvo:
            return ["140 Series", "240 Series", "260 Series", "340", "360", "440", "460", "480", "740", "760", "780", "850", "940", "960", "Amazon", "C30", "C70", "S40", "S60", "S60 Cross Country", "S70", "S80", "S90", "V40", "V40 Cross Country", "V50", "V60", "V60 Cross Country", "V70", "V90", "XC40", "XC60", "XC90"]
        case .ВАЗ:
            return ["1111 Oка", "2101", "2102", "2103", "2104", "2105", "2106", "2107", "2108", "2109", "21099", "2110", "2111", "2112", "2113", "2114", "2115", "2120 Надежда", "2121 (4х4)", "21213", "2123", "2131 (4x4)", "ВИС"]
        case .Москвич:
            return ["2136", "2137", "2138", "2140", "2141", "400", "401", "402", "403", "407", "408", "410", "412", "423", "426", "427", "434", "Князь Владимир", "Святогор", "Юрий Долгорукий"]
        case .УАЗ:
            return ["2206", "3151", "31512", "31514", "3153", "3160", "3303", "3741", "39099", "3962", "451", "452", "469", "Hunter", "Patriot", "Patriot Cargo", "Patriot Pickup", "Profi"]
        }
    }
}
