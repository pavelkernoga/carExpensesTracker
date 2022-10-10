//
//  String+Extension.swift
//  carExpensesTracker
//
//  Created by pavel on 10.10.22.
//

import Foundation

extension String {
    
    func splitString() -> String {
        let reciviedString = self
        let regexp: NSRegularExpression = try! NSRegularExpression.init(pattern: "([a-z])([A-Z])", options: [])
        let range = NSMakeRange(0, self.count)
        let outputString = regexp.stringByReplacingMatches(in: reciviedString, options: [], range: range, withTemplate: "$1 $2")
        return outputString
    }
}
