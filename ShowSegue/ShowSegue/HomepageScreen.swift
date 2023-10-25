//
//  ContentView.swift
//  ShowSegue
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct HomepageScreen: View {
		
	@State private var toGameScreenBool = false
	
    var body: some View {
		NavigationStack {
			VStack {
				Button("Start"){
					toGameScreenBool = true
				}
			}
			.navigationTitle("Homepage")
			.navigationDestination(isPresented: $toGameScreenBool) {
				GameScreen()
			}
		}
    }
}

#Preview {
    HomepageScreen()
}
