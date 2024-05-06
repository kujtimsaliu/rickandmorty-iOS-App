//
//  RMService.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 5.5.24.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService: Codable {
    /// Shared singleton instance
    static let sharerd = RMService()
    
    enum RMServiceError: Error{
        case failedToCreateRequest
        case failedToGetData
    }
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - comletion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        comletion: @escaping(Result<T, Error>) -> Void
    ) {
        let urlRequest = self.request(from: request)
        guard let urlRequest = self.request(from: request) else {
            comletion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else{
                comletion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            // Decode response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                comletion(.success(result))
            }
            catch {
                comletion(.failure(error))
            }
        }
        task.resume()
    }
    
    // MARK: Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { 
            return nil
        }
        var request = URLRequest(url: url)
         
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
}
