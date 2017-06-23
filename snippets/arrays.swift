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

func functionWithMap() -> [String] {
    let names = collection().map {
        return $0.name
    }
    return names
}

func functionWithFilter() -> [player] {
    let filtered = collection().filter {
        (player) -> Bool in
            player.position == "F"
    }
    return filtered
}

func functionWithFlatMap() -> [Int?] {
    let players = collection().filter {
        (player) -> Bool in
        player.position == "C"
    }.map { (player) -> Int in
        if let number = player.number {
            return number as Int
        }
    }
    
    let coaches = collection().filter {
        (player) -> Bool in
        player.position == "COACH"
    }.map { (player) -> Int in
        if let number = player.number {
            return number as Int
        }
    }
    
    let everyone = [players, coaches]
    let flattened = everyone.map{ $0 }.flatMap { $0 }
    
    return flattened
}
