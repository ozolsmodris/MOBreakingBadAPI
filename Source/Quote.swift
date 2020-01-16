//
//  Quote.swift
//  MOBreakingBadAPI
//
//  Created by Modris Ozols on 14/01/2020.
//  Copyright © 2020 Modris Ozols. All rights reserved.
//

import Foundation

/// Quote:
/// - id
/// - quote
/// - author
/// - series
public struct Quote: Decodable {
    public let id: Int
    public let quote: String
    public let author: String
    public let series: String
    
    enum CodingKeys: String, CodingKey {
        case id = "quote_id"
        case quote
        case author
        case series
    }
}
