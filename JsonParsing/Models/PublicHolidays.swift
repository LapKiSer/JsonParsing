//
//  JSON.swift
//  JsonParsing
//
//  Created by Кирилл Лапковский on 07.05.2023.
//

import Foundation

struct Holiday: Decodable {
    let date: String
    let name: String
    let countryCode: String
    let type: String
}
