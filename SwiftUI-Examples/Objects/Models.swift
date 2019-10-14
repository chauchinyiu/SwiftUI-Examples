//
//  Models.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 14.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//

import Foundation
import SwiftUI

struct Repository: Decodable, Hashable, Identifiable {
    var id: Int64
    var full_name: String
    var description: String?
    var stargazers_count: Int = 0
    var language: String?
    var owner: User
    var html_url: URL
}

struct User: Decodable, Hashable, Identifiable {
    var id: Int64
    var login: String
    var avatar_url: URL
}

struct SearchRepositoryResponse: Decodable {
    var items: [Repository]
}

struct Product : Identifiable {
    var id: Int
    var title : String
    var isFavorited : Bool
}


let mockRepos = [ Repository(id: Int64(UUID().hashValue), full_name: "test 1", description: "test description", stargazers_count: 4, language:"swift", owner: User(id: Int64(UUID().hashValue), login: "test", avatar_url: URL(string: "https://avatars3.githubusercontent.com/u/324574?v=4")!), html_url: URL(string: "https://github.com/openstack")!),
    Repository(id: Int64(UUID().hashValue), full_name: "test 2", description: "test description", stargazers_count: 4, language: "swift", owner: User(id: Int64(UUID().hashValue), login: "test", avatar_url: URL(string: "https://avatars3.githubusercontent.com/u/324574?v=4")!), html_url: URL(string: "https://github.com/openstack")!),
    Repository(id: Int64(UUID().hashValue), full_name: "test 3", description: "test description", stargazers_count: 4, language: "swift", owner: User(id: Int64(UUID().hashValue), login: "test", avatar_url: URL(string: "https://avatars3.githubusercontent.com/u/324574?v=4")!), html_url: URL(string: "https://github.com/openstack")!)]
