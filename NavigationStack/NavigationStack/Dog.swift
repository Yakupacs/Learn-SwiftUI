//
//  Dog.swift
//  NavigationStack
//
//  Created by Yakup on 25.10.2023.
//

import Foundation

struct Dog: Identifiable, Hashable{
	var id = UUID()
	var name: String
}

let dogs = [Dog(name: "Pulsar"), Dog(name: "Barley"), Dog(name: "Garip Kont"), Dog(name: "Şila")]
