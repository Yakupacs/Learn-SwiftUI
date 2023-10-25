//
//  ContentView.swift
//  CircularShape
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
	
	@State var firstCirclePercentage: Double = 0
	@State var secondCirclePercentage: Double = 0
	@State var thirdCirclePercentage: Double = 0
	
	var body: some View {
		ZStack{
			CircularView(lineWidth: 30, backgroundColor: .red.opacity(0.3), foregroundColor: .red.opacity(0.5), percentage: firstCirclePercentage)
				.frame(width: 350, height: 350)
				.onTapGesture {
					if self.firstCirclePercentage != 100{
						self.firstCirclePercentage += 10
					}else{
						self.firstCirclePercentage = 0
					}
				}
			CircularView(lineWidth: 30, backgroundColor: .blue.opacity(0.3), foregroundColor: .blue.opacity(0.2), percentage: secondCirclePercentage)
				.frame(width: 250, height: 250)
				.onTapGesture {
					if self.secondCirclePercentage != 100{
						self.secondCirclePercentage += 10
					}else{
						self.secondCirclePercentage = 0
					}
				}
			CircularView(lineWidth: 30, backgroundColor: .green.opacity(0.5), foregroundColor: .green.opacity(0.3), percentage: thirdCirclePercentage)
				.frame(width: 150, height: 150)
				.onTapGesture {
					if self.thirdCirclePercentage != 100{
						self.thirdCirclePercentage += 10
					}else{
						self.thirdCirclePercentage = 0
					}
				}
		}
	}
}

#Preview {
	ContentView()
}
