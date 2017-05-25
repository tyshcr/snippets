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
    var number: Int
    var position: String
}

func collection() -> [player] {
    let collection = [
        player(name: "LeBron", number: 23, position: "F"),
        player(name: "Kyrie", number: 2, position: "G"),
        player(name: "Kevin", number: 0, position: "C"),
        player(name: "Tristan", number: 13, position: "C"),
        player(name: "JR", number: 5, position: "F")]
    return collection
}

func functionWithMap() -> [String] {
    let names = collection().map {
        return $0.name
    }
    
    return names
}
