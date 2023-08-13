//
//  PlacementButtonViews.swift
//  PickerAR
//
//  Created by Vladyslav Lysenko on 01.08.2023.
//

import SwiftUI

struct PlacementButtonViews: View {
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel: Model?
    @Binding var modelConfirmedForPlacement: Model?
    
    var body: some View {
        HStack {
            // CANCEL BUTTON
            Button(action: {
                print("DEBUG: Cancel model placement.")
                resetPlacementParameters()
            }) {
                Image(systemName: "xmark")
                    .frame(width: 60, height: 60)
                    .font(.title)
                    .background(Color.white.opacity(0.75))
                    .cornerRadius(30)
                    .padding(20)
            }
            
            // CONFIRM BUTTON
            Button(action: {
                print("DEBUG: Confirm model placement.")
                modelConfirmedForPlacement = selectedModel
                resetPlacementParameters()
            }) {
                Image(systemName: "checkmark")
                    .frame(width: 60, height: 60)
                    .font(.title)
                    .background(Color.white.opacity(0.75))
                    .cornerRadius(30)
                    .padding(20)
            }
        }
    }
    
    func resetPlacementParameters() {
        isPlacementEnabled = false
        selectedModel = nil
    }
}
