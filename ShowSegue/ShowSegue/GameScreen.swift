//
//  GameScreen.swift
//  ShowSegue
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct GameScreen: View {
	
	@Environment(\.presentationMode) var pm
	@State private var toResultScreenBool = false
	
    var body: some View {
		VStack(spacing: 100){
			Button("Finish") {
				toResultScreenBool = true
			}
			Button("Back") {
				pm.wrappedValue.dismiss()
			}
		}.navigationTitle("Game")
			.sheet(isPresented: $toResultScreenBool){
				ResultScreen()
			}
    }
}

#Preview {
    GameScreen()
}
