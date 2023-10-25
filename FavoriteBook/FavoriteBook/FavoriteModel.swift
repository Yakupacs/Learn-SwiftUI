//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Yakup on 24.10.2023.
//

import Foundation

struct FavoriteModel: Identifiable {
	var id = UUID()
	var title: String
	var elements: [FavoriteElement]
}

struct FavoriteElement: Identifiable {
	var id = UUID()
	var name: String
	var imageName: String
	var description: String
}

// MARK: - Bands

let metallica = FavoriteElement(name: "Metallica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElement(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironmaiden = FavoriteElement(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica, megadeth, ironmaiden])

// MARK: - Movies

let pulpfiction = FavoriteElement(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let thedarkknight = FavoriteElement(name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let killbill = FavoriteElement(name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction, thedarkknight, killbill])

let myFavorites = [favoriteBands, favoriteMovies]
