//
//  ThirdView.swift
//  FirstAppSwiftUI
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct ThirdView: View {
	
	let myArray = ["James", "Lars", "Kirk", "Rob"]
	
    var body: some View {
		List(myArray, id: \.self) { element in
			HStack {
				Image("leon")
					.resizable()
					.aspectRatio(contentMode: .fit)
				.frame(width: 30, height: 30)
				Text(element)
					.font(.headline)
					.fontWeight(.medium)
			}
		}
		
//		List {
//			ForEach(myArray, id: \.self) { element in
//				Text(element)
//			}
//		}
    }
}

#Preview {
    ThirdView()
}
