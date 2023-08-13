//
//  ARViewContainer.swift
//  PickerAR
//
//  Created by Vladyslav Lysenko on 01.08.2023.
//

import SwiftUI
import RealityKit
import ARKit
import Combine

struct ARViewContainer: UIViewRepresentable {
    @Binding var modelConfirmedForPlacement: Model?
    
    func makeUIView(context: Context) -> ARView {
        let arView = CustomARView(frame: .zero)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        guard let model = modelConfirmedForPlacement,
              let modelEntity = model.entity else { return }
        print("DEBUG: adding model to scene \(model.name)")
        
        let anchorEntity = AnchorEntity(plane: .any)
        anchorEntity.addChild(modelEntity.clone(recursive: true))
        uiView.scene.addAnchor(anchorEntity)
        
        DispatchQueue.main.async {
            modelConfirmedForPlacement = nil
        }
        
        print("DEBUG: Successfully loaded modelEntity for modelName: \(model.name)")
    }
}
