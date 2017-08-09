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
    
    var knob = Knob(position: CGPoint(x: 0, y: 0))
    var sliderTrack = SliderTrack(position: CGPoint(x: 0, y: 0))
    var label = Label(text: "123", position: CGPoint(x: 0, y: 100))

    override func didMove(to view: SKView) {
        addChild(knob.node)
        addChild(sliderTrack.node)
        addChild(label.node)
    }
    
    override func mouseDown(with event: NSEvent) {
        print("Mouse Down.")
        
        knob.position = event.locationInWindow
    }
    
    override func mouseDragged(with event: NSEvent) {
        print("Mouse Dragged.")
    }
    
    override func mouseUp(with event: NSEvent) {
        print("Mouse Up.")
    }
}
