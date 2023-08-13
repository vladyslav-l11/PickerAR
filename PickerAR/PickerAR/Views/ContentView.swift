//
//  ContentView.swift
//  PickerAR
//
//  Created by Vladyslav Lysenko on 23.07.2023.
//

import SwiftUI
import RealityKit
import ARKit
import Combine

struct ContentView : View {
    @State private var isPlacementEnabled = false
    @State private var selectedModel: Model?
    @State private var modelConfirmedForPlacement: Model?
    
    var models = ModelItems.allCases.map { Model(item: $0) }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer(modelConfirmedForPlacement: $modelConfirmedForPlacement)
                .allowsHitTesting(true)
            
            if isPlacementEnabled {
                PlacementButtonViews(isPlacementEnabled: $isPlacementEnabled,
                                     selectedModel: $selectedModel,
                                     modelConfirmedForPlacement: $modelConfirmedForPlacement)
            } else {
                ModelPickerView(isPlacementEnabled: $isPlacementEnabled,
                                selectedModel: $selectedModel,
                                models: models)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
