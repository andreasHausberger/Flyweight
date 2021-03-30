//
//  APIError.swift
//  SpaceTraders (iOS)
//
//  Created by Andreas Hausberger on 05.03.21.
//

import Foundation

@available(OSX 10.15, *)
@available(iOS 13.0, *)
public enum APIError: Error {
    case statusCode
    case decoding
    case invalidURL
    case other(Error)
    
    static func map( _ error: Error) -> APIError {
        print("mapping \(error.localizedDescription)")
        return error as? APIError ?? other(error)
    }
}
