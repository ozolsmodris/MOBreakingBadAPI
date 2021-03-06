//
//  MOBreakingBadAPI.swift
//  MOBreakingBadAPI
//
//  Created by Modris Ozols on 14/01/2020.
//  Copyright © 2020 Modris Ozols. All rights reserved.
//

import UIKit

public class MOBreakingBadAPI {
    let url: String = "https://www.breakingbadapi.com/api"
    
    public init() {}

    /// Returns random quote from random Braking Bad character
    /// - Parameter completion: completion returns Quote structure
    public func getRandomQuote(completion: @escaping (Quote?) -> Void) {
        let endpoint = URL(string: "\(url)/quote/random")!
        
        NetworkController.performRequest(for: endpoint, httpMethod: .Get) { (data, error) in
            if let error = error {
                print("Error getting from url \(endpoint.absoluteString), error: \(error.localizedDescription)")
                completion(nil)
            }
            else {
                if let data = data,
                  let quotes = try? JSONDecoder().decode([Quote].self, from: data) {
                    completion(quotes.first ?? nil)
                }
            }
        }
    }
    
    /// Returns random quote from character of Braking Bad
    /// - Parameters:
    ///   - author: Fill name of character from Braking Bad "Walter White"
    ///   - completion: returns Quote if character has quote returns nil fix there is not quotes
    public func getQuote(from author: String, completion: @escaping (Quote?) -> Void) {
        let endpoint = URL(string: "\(url)/quote/random")!
        NetworkController.performRequest(for: endpoint, httpMethod: .Get, urlParameters: ["author": author]) { (data, error) in
            if let error = error {
                print("Error getting from url \(endpoint.absoluteString), error: \(error.localizedDescription)")
                completion(nil)
            } else {
                if let data = data,
                  let quotes = try? JSONDecoder().decode([Quote].self, from: data) {
                    completion(quotes.first ?? nil)
                }
            }
        }
    }
    
    /// Returns all characters from Braking Bad
    /// - Parameter completion: Returns array of Character else return empty arrray
    public func getAllCharacters(completion: @escaping ([Character]) -> Void) {
        let endpoint = URL(string: "\(url)/characters")!
        NetworkController.performRequest(for: endpoint, httpMethod: .Get) { (data, error) in
            if let error = error {
                print("Error getting from url \(endpoint.absoluteString), error: \(error.localizedDescription)")
                completion([])
            }
            if let data = data,
              let characters = try? JSONDecoder().decode([Character].self, from: data) {
                completion(characters)
            }
        }
    }
}
