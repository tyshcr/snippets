//
//  main.swift
//  snippets
//
//  Created by TYSH, CHRISTOPHER
//
//

import Foundation

class snippets {
    
    init() {
        menu()
    }
    
    func menu() {
        print("[1] callback")

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
