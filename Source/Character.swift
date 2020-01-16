//
//  Character.swift
//  MOBreakingBadAPI
//
//  Created by Modris Ozols on 14/01/2020.
//  Copyright © 2020 Modris Ozols. All rights reserved.
//

import Foundation

/// Character:
/// - id
/// - name
/// - birthday
/// - occupation
/// - nickname
public struct Character: Decodable {
    public let id: Int
    public let name: String
    public var birthday: String
    public let occupation: [String]
    public let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case id = "char_id"
        case name
        case birthday
        case occupation
        case nickname
    }
}
