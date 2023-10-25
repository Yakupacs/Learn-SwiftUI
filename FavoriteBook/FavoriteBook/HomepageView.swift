//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct HomepageView: View {
	var body: some View {
		NavigationView{
			List{
				ForEach(myFavorites) { favorite in
					Section(header: Text(favorite.title)) {
						ForEach(favorite.elements) { element in
							NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
								Text(element.name)
							}
						}
					}
				}
			}.navigationTitle(Text("Favorite Book"))
		}
	}
}

#Preview {
	HomepageView()
}
