//
//  FifthView.swift
//  FirstAppSwiftUI
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct FifthView: View {
	
	@State var name = "Yakup"
	
    var body: some View {
		VStack {
			Text(name)
				.font(.custom("Avenir", size: 40))
				.padding(30)
			TextField("Ad", text: $name)
				.font(.custom("Avenir", fixedSize: 25))
				.border(.black, width: 2)
				.frame(width: UIScreen.main.bounds.width * 0.8, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
		}
    }
}

#Preview {
    FifthView()
}
