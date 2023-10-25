//
//  NetworkService.swift
//  ContactApp
//
//  Created by Yakup on 25.10.2023.
//

import Foundation

protocol NetworkService{
	var type: String { get }
	func downloadData(_ resource: String) async throws -> [User]
}
