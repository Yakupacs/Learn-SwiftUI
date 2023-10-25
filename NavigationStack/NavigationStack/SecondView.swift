//
//  SecondView.swift
//  NavigationStack
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct SecondView: View {
		
	@State var path = [Dog]()

    var body: some View {
		NavigationStack(path: $path) {
			List(dogs) { dog in
				NavigationLink(dog.name, value: dog)
			}.navigationDestination(for: Dog.self, destination: { dog in
				VStack{
					Text(dog.name)
					Button("Go Back"){
						// İlk ekrana döner
						self.path = []
					}
					Button("Add To Path"){
						// Farklı ekranlara gider
						path = [dogs[0], dogs[1], dogs[2]]
					}
				}
			})
			.navigationTitle("Dogs")
			.navigationBarTitleDisplayMode(.inline)
		}
    }
}

#Preview {
    SecondView()
}
