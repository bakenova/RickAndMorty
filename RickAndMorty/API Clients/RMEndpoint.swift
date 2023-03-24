//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Арайлым Бакенова on 25.03.2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Enpoint to get episode info
    case episode
    /// Endpoint to get location info
    case location
}
