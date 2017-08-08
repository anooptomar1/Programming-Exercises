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
    
    override func didMove(to view: SKView) {
        
        let knob = Knob(position: CGPoint(x: 0, y: 0))
        
        addChild(knob.node)
        
        let sliderTrack = SliderTrack(position: CGPoint(x: 0, y: 0))
        
        addChild(sliderTrack.node)
        
        let label = Label(text: "123", position: CGPoint(x: 0, y: 100))
        
        addChild(label.node)
    }
    
    override func mouseDown(with event: NSEvent) {
        
    }
    
    override func mouseDragged(with event: NSEvent) {
        
    }
    
    override func mouseUp(with event: NSEvent) {
        
    }
}
