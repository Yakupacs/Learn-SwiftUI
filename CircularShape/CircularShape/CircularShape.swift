//
//  CircularShape.swift
//  CircularShape
//
//  Created by Yakup on 25.10.2023.
//

import Foundation
import SwiftUI

struct CircularShape: Shape{
	
	var percent: Double
	var startAngle: Double
	
	typealias AnimatableData = Double
	var animatableData: Double {
		get {
			return percent
		}
		set { 
			percent = newValue
		}
	}

	init(percent: Double = 100, startAngle: Double = -90.0) {
		self.percent = percent
		self.startAngle = startAngle
	}
	
	func path(in rect: CGRect) -> Path {
		
		let width = rect.width
		let height = rect.height
		let radius = min(width, height) / 2
		let center = CGPoint(x: width / 2, y: height / 2)
		let endAngle = ((self.percent / 100) * 360) + self.startAngle
		
		return Path() { path in
			path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: true)
		}
	}
	
	
}
