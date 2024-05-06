//
//  RMEndpoint.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 6.5.24.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character  // .rawValue -> "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
