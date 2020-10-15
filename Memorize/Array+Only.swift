//
//  Array+Only.swift
//  Memorize
//
//  Created by Adriano Marques on 15/10/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
