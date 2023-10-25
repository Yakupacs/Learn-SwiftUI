//
//  CircularView.swift
//  CircularShape
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI

struct CircularView: View {
	
	let lineWidth: CGFloat
	let backgroundColor: Color
	let foregroundColor: Color
	let percentage: Double
	
	var body: some View {
		GeometryReader{ geometry in
			ZStack{
				CircularShape()
					.stroke(style: StrokeStyle(lineWidth: lineWidth))
					.fill(backgroundColor)
				CircularShape(percent: percentage)
					.stroke(style: StrokeStyle(lineWidth: lineWidth))
					.fill(foregroundColor)
			}.animation(.easeIn(duration: 1.0), value: percentage)
			.padding(lineWidth / 1.5)
		}
    }
}

#Preview {
	CircularView(lineWidth: 25, backgroundColor: .red, foregroundColor: .green, percentage: 50)
}
