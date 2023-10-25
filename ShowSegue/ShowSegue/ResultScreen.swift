//
//  ResultScreen.swift
//  ShowSegue
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct ResultScreen: View {
	
	@Environment(\.presentationMode) var pm
	
	var body: some View {
		VStack(spacing: 30, content: {
			Text("Result Screen").font(.system(size: 30))
			Button("Close"){
				pm.wrappedValue.dismiss()
			}
		})
	}
}

#Preview {
	ResultScreen()
}
