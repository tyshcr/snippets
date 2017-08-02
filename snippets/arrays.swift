//
//  arrays.swift
//  snippets
//
//  Created by TYSH, CHRISTOPHER
//
//

import Foundation

struct player {
    var name: String
    var number: Int?
    var position: String?
}

func collection() -> [player] {
    let collection = [
        player(name: "LeBron", number: 23, position: "F"),
        player(name: "Kyrie", number: 2, position: "G"),
        player(name: "Kevin", number: 0, position: "C"),
        player(name: "Tristan", number: 13, position: "C"),
        player(name: "JR", number: 5, position: "F"),
        player(name: "Tyronn", number: nil, position: "COACH")]
    return collection
}

// Use map to loop over a collection and apply the same operation to each element in the collection.
func functionWithMap() -> [String] {
    let names = collection().map {
        return $0.name
    }
    return names
}

// Use filter to loop over a collection and return an Array containing only those elements that match an include condition.
func functionWithFilter() -> [player] {
    let filtered = collection().filter {
        (player) -> Bool in
            player.position == "F"
    }
    return filtered
}

// Use flatmap to combine Arrays into a single Array. 
// Also removes nil values, but only resolves 1 level of optionals (combine ararys OR remove nils)
func functionWithFlatMap() -> [Int] {
    let players = collection().filter {
        (player) -> Bool in
            player.position == "C"
    }.map {
        (player) -> Int in
            return player.number!
    }
    
    let coaches = collection().filter {
        (player) -> Bool in
            player.position == "COACH"
    }.map {
        (player) -> Int? in
            if let num = player.number {
                return num
            }
            return nil
    }
    
    let everyone = [players, coaches] // [[0,13],[nil]]
    // use flatMap twice. Once to combine the Arrays. Twice to remove the nils.
    let flattened = everyone.flatMap{ $0 }.flatMap{ $0 }
    return flattened
}

func functionWithEnumeration() -> [(fruit: String, position: Int)] {
    let fruits = ["Apple", "Orange", "Grape"]
    var output: [(fruit: String, position: Int)] = []
    
    for (index, item) in fruits.enumerated() {
        output.append((fruit: item, position: index))
    }
    return output
}
