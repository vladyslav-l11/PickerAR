//
//  CustomARView.swift
//  PickerAR
//
//  Created by Vladyslav Lysenko on 04.08.2023.
//

import FocusEntity
import RealityKit
import ARKit

final class CustomARView: ARView {
    lazy var focusSquare = FocusEntity(on: self, focus: .plane)
    
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        focusSquare.delegate = self
        focusSquare.setAutoUpdate(to: true)
        
        setupARView()
    }
    
    @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError ("init(coder: ) has not been implemented" )
    }
    
    private func setupARView() {
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal, .vertical]
        config.environmentTexturing = .automatic
        
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
            config.sceneReconstruction = .mesh
            session.run(config)
        }
    }
}

// MARK: - FocusEntityDelegate
extension CustomARView: FocusEntityDelegate {
    func toTrackingState() {
        print("tracking")
    }
    
    @objc(toInitializingState) func toInitializingState() {
        print("initializing")
    }
}
