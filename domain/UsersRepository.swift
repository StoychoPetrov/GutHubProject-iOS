//
//  UsersRepository.swift
//  GitHubProject
//
//  Created by Stoycho Petrov on 15.04.23.
//

import Foundation

protocol UsersRepository {
    func getUsers(completion: @escaping (Result<[User], Error>) -> Void) -> Void
}
