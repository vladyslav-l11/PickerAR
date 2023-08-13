//
//  Model.swift
//  PickerAR
//
//  Created by Vladyslav Lysenko on 01.08.2023.
//

import UIKit
import RealityKit
import Combine

class Model {
    var name: String
    var image: UIImage
    var entity: ModelEntity?

    private var cancellable: AnyCancellable? = nil

    init(item: ModelItems) {
        name = item.name
        image = item.image
        cancellable = ModelEntity.loadModelAsync(contentsOf: item.modelURL)
            .sink(receiveCompletion: { loadCompletion in
                //Handle our error
                print("DEBUG: Unable to load modelEntity for modelName: \(self.name)")
            }, receiveValue: { modelEntity in
                self.entity = modelEntity
                print("DEBUG: Successfully loaded modelEntity for modelName: \(self.name)")
            })
    }
}

enum ModelItems: CaseIterable {
    case fenderStratocaster
    case teapot
    case toyBiplaneIdle
    case robotWalkIdle
    
    var image: UIImage {
        switch self {
        case .fenderStratocaster:
            return R.image.fender_stratocaster()!
        case .teapot:
            return R.image.teapot()!
        case .toyBiplaneIdle:
            return R.image.toy_biplane_idle()!
        case .robotWalkIdle:
            return R.image.robot_walk_idle()!
        }
    }
    
    var name: String {
        switch self {
        case .fenderStratocaster:
            return R.image.fender_stratocaster.name
        case .teapot:
            return R.image.teapot.name
        case .toyBiplaneIdle:
            return R.image.toy_biplane_idle.name
        case .robotWalkIdle:
            return R.image.robot_walk_idle.name
        }
    }
    
    var modelURL: URL {
        switch self {
        case .fenderStratocaster:
            return R.file.fender_stratocasterUsdz()!
        case .teapot:
            return R.file.teapotUsdz()!
        case .toyBiplaneIdle:
            return R.file.toy_biplane_idleUsdz()!
        case .robotWalkIdle:
            return R.file.robot_walk_idleUsdz()!
        }
    }
}
