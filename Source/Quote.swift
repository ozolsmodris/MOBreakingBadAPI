//
//  Quote.swift
//  MOBreakingBadAPI
//
//  Created by Modris Ozols on 14/01/2020.
//  Copyright © 2020 Modris Ozols. All rights reserved.
//

import Foundation

public struct Quote: Decodable {
    let id: Int
    let quote: String
    let author: String
    let series: String
    
    enum CodingKeys: String, CodingKey {
        case id = "quote_id"
        case quote
        case author
        case series
    }
}
