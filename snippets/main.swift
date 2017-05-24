//
//  main.swift
//  snippets
//
//  Created by TYSH, CHRISTOPHER
//
//

import Foundation

class snippets: menuDelegate {
    
    var options = [1: "callback"]
    
    init() {
        menu()
    }
    
    func menu() {
        for (key, value) in options.sorted(by: { $0.0 < $1.0 }) {
            print("[\(key)] \(value)")
        }

        let functionId = readLine()!

        switch functionId {
            case "1":
                callback()
            
            default:
                print("No option selected")
        }
    }

    func callback() {
        functionWithCallback {
            (success) in
            print("Received callback with value: \(success)")
        }
    }
    
}

let _ = snippets()
