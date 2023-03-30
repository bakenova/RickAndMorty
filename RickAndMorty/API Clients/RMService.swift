//
//  RMService.swift
//  RickAndMorty
//
//  Created by Арайлым Бакенова on 25.03.2023.
//

import Foundation

/// Primary  API  service object to get data
final class RMService {
    
    /// Shared singletone instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init(){}
    
    /// Send API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback to data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
