//
//  GameScene.swift
//  BasicDraw
//
//  Created by Wesley Van der Klomp on 8/11/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        let sideBarContainer = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 125, height: frame.size.height + 1))
        
        sideBarContainer.fillColor = .white
        
        addChild(sideBarContainer)
    }
    
    override func mouseDown(with event: NSEvent) {
        
    }
    
    override func mouseDragged(with event: NSEvent) {
        
    }
    
    override func mouseUp(with event: NSEvent) {
        
    }
    
    override func keyDown(with event: NSEvent) {
        print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")

        if let characters = event.characters {
            for character in characters {
                switch characters {
                case "a":
                    print("a pressed")
                default:
                    print("\(character) pressed")
                }
            }
        }
    }
    
}
