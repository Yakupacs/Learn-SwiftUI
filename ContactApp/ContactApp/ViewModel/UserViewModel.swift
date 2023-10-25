//
//  UserViewModel.swift
//  ContactApp
//
//  Created by Yakup on 25.10.2023.
//

import Foundation

class UserListViewModel: ObservableObject{
	@Published var userList = [UserViewModel]()
	
	private var service: NetworkService
	
	init(service: NetworkService) {
		self.service = service
	}
	
	func downloadUsers() async{
		
		var resource = ""
		
		if service.type == "Webservice"{
			resource = Constants.URLs.baseURL
		}else{
			resource = Constants.Paths.baseURL
		}
		
		do {
			let users = try await service.downloadData(resource)
			DispatchQueue.main.async {
				self.userList = users.map(UserViewModel.init)
			}
		} catch {
			print(error.localizedDescription)
		}
	}
}

struct UserViewModel{
	let user: User
	
	var id: Int{
		user.id
	}
	var name: String{
		user.name
	}
	var userName: String{
		user.username
	}
	var email: String{
		user.email
	}
}
