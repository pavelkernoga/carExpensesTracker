//
//  FirebaseCarModel.swift
//  carExpensesTracker
//
//  Created by pavel on 7.10.22.
//

import Foundation
import SwiftUI

struct FirebaseCarModel: Hashable {
    var brand: String
    var model: String
    var productionYear: Int
    var mileage: String
    var mileageState: String
}
