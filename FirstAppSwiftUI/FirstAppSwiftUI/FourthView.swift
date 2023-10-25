//
//  FourthView.swift
//  FirstAppSwiftUI
//
//  Created by Yakup on 24.10.2023.
//

import SwiftUI

struct FourthView: View {
	
	// State ön eki bu değişken değiştirildiğinde View'ın yenilenmesi gerektiği anlamına gelir.
	@State var myName = "Yakup Açış"
	
    var body: some View {
        Text(myName)
			.font(.largeTitle)
			.padding(20)
		Button(action: {
			self.myName = self.myName.reversed().reversed()
		}, label: {
			Text("Reversed!")
				.font(.title)
		})
    }
}

#Preview {
    FourthView()
}
