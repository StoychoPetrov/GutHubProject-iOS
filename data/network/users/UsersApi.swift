//
//  UsersApi.swift
//  GitHubProject
//
//  Created by Stoycho Petrov on 16.04.23.
//

import Foundation

class UsersApi {
    func loadUsers(withCompletion completion: @escaping (ApiResponse<[User]>) -> Void) {
        let url = URL(string: "/users")!
        let task = URLSession.shared.dataTask(with: url) { (data, _, _) -> Void in
            guard let data = data else {
                DispatchQueue.main.async { completion(ApiResponse.error("Fail")) }
                       return
                   }
                   let users = try? JSONDecoder().decode([UserDto.self], from: data)
                   DispatchQueue.main.async { completion(users) }
               }
               task.resume()
    }
}
