//
//  main.swift
//  snippets
//
//  Created by TYSH, CHRISTOPHER
//
//

import Foundation

class snippets: menuDelegate {
    
    var options = [1: "callback", 2: "map", 3: "filter", 4: "flatMap", 5: "exit"]
    
    init() {
        menu()
    }
    
    func menu() {
        var exit = false
        
        while !exit {
            
            print("- - - - - -")
            
            for (key, value) in options.sorted(by: { $0.0 < $1.0 }) {
                print("[\(key)] \(value)")
            }
        
            let functionId = readLine()!

            switch functionId {
                case "1":
                    callback()
                
                case "2":
                    map()
                
                case "3":
                    filter()
                
                case "4":
                    flatMap()
                    
                case "5":
                    exit = true
                
                default:
                    print("No option selected")
            }
        }
    }

    func callback() {
        functionWithCallback {
            (success) in
            print("Received callback with value: \(success)")
        }
    }
    
    func map() {
        print( functionWithMap() )
    }
    
    func filter() {
        print( functionWithFilter() )
    }
    
    func flatMap() {
        print( functionWithFlatMap() )
    }
    
}

let _ = snippets()
