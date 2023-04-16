//
//  UserDto.swift
//  GitHubProject
//
//  Created by Stoycho Petrov on 16.04.23.
//

import Foundation

struct UserDto {
    let id: Int
    let login: String
    let avatarUrl: String
    let type: String
    let nodeId: String
}

extension UserDto: Decodable {
    enum CodingKeys: String, CodingKey {
            case id
            case login
            case avatarUrl = "avatar_url"
            case type
            case nodeId = "node_id"
        }
}
