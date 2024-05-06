//
//  RMService.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 5.5.24.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let sharerd = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - comletion: Callback with data or error
    public func execute(_ request: RMRequest, comletion: @escaping() -> Void){
        
    }
}
