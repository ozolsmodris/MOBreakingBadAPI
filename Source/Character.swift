//
//  Character.swift
//  MOBreakingBadAPI
//
//  Created by Modris Ozols on 14/01/2020.
//  Copyright © 2020 Modris Ozols. All rights reserved.
//

import Foundation

public struct Character: Decodable {
    let id: Int
    let name: String
    var birthday: String
    let occupation: [String]
    let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case id = "char_id"
        case name
        case birthday
        case occupation
        case nickname
    }
}
