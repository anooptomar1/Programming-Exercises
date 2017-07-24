//
//  GameScene.swift
//  Pool
//
//  Created by Wesley Van der Klomp on 7/22/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//

import SpriteKit
import GameplayKit

let ballCollisionCategory = UInt32(1)
let queCollisionCategory = UInt32(2)

class GameScene: SKScene {
    
    var que: SKSpriteNode?
    var whiteBall: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        que = childNode(withName: "Que") as? SKSpriteNode
        whiteBall = childNode(withName: "White Ball") as? SKSpriteNode
        
        if let que = que {
            que.physicsBody = SKPhysicsBody(rectangleOf: que.size)
            que.physicsBody?.affectedByGravity = false
            
            que.physicsBody?.collisionBitMask = queCollisionCategory
        }
        
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        
        if let whiteBall = whiteBall {
            whiteBall.physicsBody = SKPhysicsBody(circleOfRadius: whiteBall.size.width)
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let que = que {
            que.position = pos
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let que = que {
            que.position = pos
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
