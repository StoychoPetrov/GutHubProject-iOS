//
//  ApiResponse.swift
//  GitHubProject
//
//  Created by Stoycho Petrov on 16.04.23.
//

import Foundation

enum ApiResponse<Data> {
    case loading
    case success(Data)
    case error(String)
}
