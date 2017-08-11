//
//  GameScene.swift
//  Slider
//
//  Created by Wesley Van der Klomp on 8/8/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var label = Label(text: "123", position: CGPoint(x: 0, y: 100))
    var slider = Slider()
    
    /// Calculated center point of the scene.
    private var center: CGPoint {
        return CGPoint(x: size.width / 2, y: size.height / 2)
    }

    override func didMove(to view: SKView) {
        label.position = CGPoint(x: center.x, y: center.y + 100)
        slider.position = CGPoint(x: center.x - slider.size.width / 2, y: center.y - slider.size.height / 2)
        
        addChild(label.node)
        addChild(slider.node)
    }
    
}
