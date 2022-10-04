//
//  MileageStates.swift
//  carExpensesTracker
//
//  Created by pavel on 4.10.22.
//

import Foundation
import CoreText

enum MileageStates: String, CaseIterable, Identifiable {
    case km
    case miles

    var id: MileageStates { self }
}
