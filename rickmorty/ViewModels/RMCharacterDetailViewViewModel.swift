//
//  RMCharacterDetailViewViewModel.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 8.5.24.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
