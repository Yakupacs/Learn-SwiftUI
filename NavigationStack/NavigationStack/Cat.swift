//
//  Cat.swift
//  NavigationStack
//
//  Created by Yakup on 25.10.2023.
//

import Foundation

struct Cat: Identifiable, Hashable{
	let id = UUID()
	let name: String
}

var cats = [Cat(name: "Boncuk"), Cat(name: "Misket"), Cat(name: "Wiskas"), Cat(name: "Garfield"), Cat(name: "Pony")]
