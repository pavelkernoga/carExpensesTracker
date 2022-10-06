//
//  Colors.swift
//  carExpensesTracker
//
//  Created by pavel on 4.10.22.
//

import Foundation
import SwiftUI

public struct Constants {
    
    // formatters
    public static let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.usesGroupingSeparator = false
        return nf
    }()
    
    // custom colors
    public static let listRowBackroundCustomColor: Color = Color(hexString: "#bedee8")
}
