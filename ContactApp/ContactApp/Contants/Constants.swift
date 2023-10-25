//
//  Constants.swift
//  ContactApp
//
//  Created by Yakup on 25.10.2023.
//

import Foundation

struct Constants{
	
	struct Paths {
		static let baseURL = "users"
	}
	
	struct URLs{
		static let baseURL = "https://jsonplaceholder.typicode.com/users"
		static let usersExtension = "\(baseURL)/users"
		static let postsExtension = "\(baseURL)/posts"
	}
}
