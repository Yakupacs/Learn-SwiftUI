//
//  ContentView.swift
//  JokesApp
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var jokesVM = JokesViewModel()
	
	var body: some View {
		NavigationView{
			List(jokesVM.jokes) { joke in
				Text(joke.value)
			}
			.navigationTitle("Jokes App")
			.toolbar {
				Button("Get New Joke") {
					jokesVM.getJokes()
				}
			}
		}
	}
}

#Preview {
	ContentView()
}
