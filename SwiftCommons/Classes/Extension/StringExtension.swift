//
//  StringExtension.swift
//  Pods
//
//  Created by Lukasz on 30/08/2017.
//
//

import Foundation

extension String {
    
    public static func areNotBlank(_ strings: String...) -> Bool {
        var isBlank = false
        strings.forEach {
            if $0.isBlank {
                isBlank = true
                return
            }
        }
        
        return !isBlank
    }
    
    public var isBlank: Bool {
        return self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    public var isNotBlank: Bool {
        return !isBlank
    }
    
    public func digitsOnly() -> String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    }
    
    
}
