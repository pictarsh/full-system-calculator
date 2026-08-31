//
//  ButtonLibrary.swift
//  FullCalculator
//
//  Created by mac on 31/08/26.
//

import Foundation
import JavaScriptCore

struct ButtonLibrary {
    static func delButton(_ text: String) -> String {
        return String(text.dropLast())
    }
    
    static func addChar(_ text: String, _ char: String) -> String {
        
        let chars: [String] = ["/", "x", "-", "+", "."]
        
        if text.isEmpty && chars.contains(char) {
            return text
        }
        
        
        if chars.contains(text.last?.description ?? "") && chars.contains(char) {
            return text
        }
        
        if text.last == "%" && !chars.contains(char) {
            return text + "+" + char
        }
        
        return text + char
    }
    
    static func calculate(_ text: String) -> String {
        var newText = text.replacingOccurrences(of: "x", with: "*")
        
        newText = newText.replacingOccurrences(of: "%", with: "/100")
        
        let context = JSContext()
        
        let result = context?.evaluateScript(newText)
        
        return result?.toString() ?? ""
    }
}
