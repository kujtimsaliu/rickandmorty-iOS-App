//
//  RMGetCharactersResponse.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 6.5.24.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable{
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}

