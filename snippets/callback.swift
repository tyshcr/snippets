//
//  callback.swift
//  snippets
//
//  Created by TYSH, CHRISTOPHER
//
//

import Foundation

func functionWithCallback(callback: @escaping (Bool) -> ()) {
    callback(true)
}
