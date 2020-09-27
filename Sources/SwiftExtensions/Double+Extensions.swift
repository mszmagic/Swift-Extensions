//
//  File.swift
//  
//
//  Created by Shunzhe Ma on R 2/09/27.
//

import Foundation

extension Double {
    
    private func isInt() -> Bool {
        return (floor(self) == self)
    }
    
    private func getCurrencySign() -> String {
        return Locale.current.currencySymbol ?? ""
    }
    
    func getMoneyString() -> String {
        if isInt() {
            return getCurrencySign() + " " + String(format: "%.0f", self)
        } else {
            return getCurrencySign() + " " + String(format: "%.1f", self)
        }
    }
    
}
