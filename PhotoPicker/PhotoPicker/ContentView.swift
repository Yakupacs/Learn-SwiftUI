//
//  ContentView.swift
//  PhotoPicker
//
//  Created by Yakup on 25.10.2023.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
	
	@State var selectedItem = [PhotosPickerItem]()
	@State var data: Data?
	
    var body: some View {
		if let data{
			if let selectedImage = UIImage(data: data){
				Image(uiImage: selectedImage)
					.resizable()
					.frame(width: UIScreen.main.bounds.height, height: UIScreen.main.bounds.height * 0.5)
			}
		}
		Spacer()
		PhotosPicker(selection: $selectedItem, maxSelectionCount: 1, selectionBehavior: .default, matching: .images) {
			Text("Select Image")
		}.onChange(of: selectedItem, perform: { newValue in
			guard let item = selectedItem.first else { return }
			item.loadTransferable(type: Data.self) { result in
				switch result{
				case .success(let data):
					if let data {
						self.data = data
					}
				case .failure(let error):
					print(error)
				}
			}
		})
		
	}
}

#Preview {
    ContentView()
}
