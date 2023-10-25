//
//  SecondView.swift
//  FirstAppSwiftUI
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("leon")
			.resizable()
			.aspectRatio(contentMode: .fit)
			.frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.5, alignment: .center)
    }
}

#Preview {
    SecondView()
}
