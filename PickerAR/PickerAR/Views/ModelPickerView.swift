//
//  ModelPickerView.swift
//  PickerAR
//
//  Created by Vladyslav Lysenko on 01.08.2023.
//

import SwiftUI

struct ModelPickerView: View {
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel: Model?
    
    let models: [Model]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< models.count) { index in
                        Button(action: {
                            print("DEBUG: selected model with name: \(models[index].name)")
                            selectedModel = models[index]
                            isPlacementEnabled = true
                        }) {
                            Image(uiImage: models[index].image)
                                .resizable()
                                .frame(height: 80)
                                .aspectRatio(1, contentMode: .fit)
                                .background(Color.white)
                                .cornerRadius(12)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .padding(20)
            .background(Color.black.opacity(0.5))
        }
    }
}
