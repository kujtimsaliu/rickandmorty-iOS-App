//
//  RMCharacterStatus.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 6.5.24.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
