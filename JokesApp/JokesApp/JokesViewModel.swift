//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Yakup on 24.10.2023.
//

import Foundation
import Alamofire

class JokesViewModel: ObservableObject{
	
	@Published var jokes = [Joke]()
	
	init() {
		for i in 0..<5 {
			getJokes()
		}
	}
	
	func getJokes(){
		AF.request("https://api.chucknorris.io/jokes/random", method: .get).responseDecodable(of: Joke.self) { response in
			switch response.result{
			case .success(let joke):
				self.jokes.append(joke)
			case .failure(let error):
				print(error)
			}
		}
	}
}
