//
//  GameScene.swift
//  RandBW
//
//  Created by Wesley Van der Klomp on 12/29/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    lazy var spin = SKAction(named: "Spin")!
    lazy var moveLeft = SKAction(named: "MoveLeft")!
    lazy var moveRight = SKAction(named: "MoveRight")!
    
    override func didMove(to view: SKView) {
        self.backgroundColor = .black

        recursivelyTriggerSquares(after: 0.1)
        
        print( 10 +||- 5 )
        print( 10 +||- 5 )
        print( 10 +||- 5 )
        print( 10 +||- 5 )
        print( 10 +||- 5 )
        print( 10 +||- 5 )

    }
    
    func recursivelyTriggerSquares(after delay: TimeInterval) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay, execute: { [weak self] in
            self?.makeSquares()
            
            self?.recursivelyTriggerSquares(after: delay +||- 0.5)
        })
    }
    
    func getRandomAction() -> SKAction {
        let randomActionList = [moveLeft, moveRight]
        
        return randomActionList.randomItem()
    }
    
    func makeSquares() {
        for i in 0...10 {
            let myFirstNode = SKSpriteNode()
            myFirstNode.color = .white
            myFirstNode.position = CGPoint(x: self.size.width / 2, y: CGFloat(i * 100))
            myFirstNode.size = CGSize(width: 20 + Int(arc4random_uniform(UInt32(30))), height: 100)
            
            self.addChild(myFirstNode)
            

            
            myFirstNode.run(getRandomAction())
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        makeSquares()
    }

    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        
        removeAnyOutOfFrameChildren()
    }
    
}

/// Produces a random Bool.
func flipACoin() -> Bool {
    let randomNumber = arc4random_uniform(2)
    return randomNumber > 0
}


