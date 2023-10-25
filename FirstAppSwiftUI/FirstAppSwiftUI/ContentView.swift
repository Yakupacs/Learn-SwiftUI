//
//  ContentView.swift
//  FirstAppSwiftUI
//
//  Created by Yakup on 23.10.2023.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
		// Üst üste vertical
        VStack {
			// Yan yana horizontal
			HStack {
				Text("Hey")
					.font(.largeTitle)
				Text(" HStack!")
					.font(.largeTitle)
			}
			.padding(10)
			Text("Hello, SwiftUI!")
				.font(.title)
				.fontWeight(.bold)
				.foregroundColor(Color.black)
				.multilineTextAlignment(.center)
			Image(systemName: "heart.fill")
				.imageScale(.large)
				.foregroundStyle(.pink)
				.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
		}.padding()
		// İç içe
		ZStack {
			Image(systemName: "star")
				.imageScale(.large)
				.foregroundColor(.green)
			Text("o")
				.font(.footnote)
		}
    }
}

#Preview {
    ContentView()
}
