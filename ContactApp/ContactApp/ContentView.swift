//
//  ContentView.swift
//  ContactApp
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var userListViewModel: UserListViewModel
	
	init(){
		self.userListViewModel = UserListViewModel(service: Localservice())
	}
	
    var body: some View {
		NavigationView{
			List(userListViewModel.userList, id: \.id) { user in
				VStack {
					Text(user.name)
						.font(.title2)
						.foregroundStyle(.black)
						.frame(maxWidth: .infinity, alignment: .leading)
					Text(user.userName)
						.font(.title3)
						.foregroundStyle(.gray)
						.frame(maxWidth: .infinity, alignment: .leading)
					Text(user.email)
						.font(.title3)
						.foregroundStyle(.gray)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
				.navigationTitle(Text("Contact"))
			}.task {
				await userListViewModel.downloadUsers()
			}
		}

    }
}

#Preview {
    ContentView()
}
