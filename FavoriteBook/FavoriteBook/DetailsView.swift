//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct DetailsView: View {
	
	var chosenFavoriteElement: FavoriteElement
	
    var body: some View {
		VStack{
			Image(chosenFavoriteElement.imageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5, alignment: .top)
			Text(chosenFavoriteElement.name)
				.font(.custom("Avenir", fixedSize: 30))
				.padding(20)
			Text(chosenFavoriteElement.description)
				.font(.custom("Avenir", fixedSize: 20))
		}
    }
}

#Preview {
    DetailsView(chosenFavoriteElement: thedarkknight)
}
