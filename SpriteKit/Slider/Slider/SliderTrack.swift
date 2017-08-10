//
//  SliderTrack.swift
//  Slider
//
//  Created by Wesley Van der Klomp on 8/8/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//

import Foundation
import SpriteKit

/// The line for showing the angle the user my drag the knob along.
class SliderTrack {
    
    /// An SKShapeNode for adding to a SpriteKit scene.
    ///
    /// Things like position, size, or color are all updated automatically when you change the properties of a `SliderTrack` instance. So you should rarely need to set properties of this `node` property directly.
    var node: SKShapeNode
    
    /// The position of the knob in it's parents coordinate system. Also used to calculate the slider's value.
    var position: CGPoint  {
        didSet {
            node.position = position
        }
    }
    
    /// Creates a track at `position`.
    init(position: CGPoint) {
        self.position = position
        
        let width = 200
        let height = 10
        let rect = CGRect(x: position.x - CGFloat(width / 2), y: position.y - CGFloat(height / 2), width: 200, height: 10)
        
        node = SKShapeNode(rect: rect, cornerRadius: 4)
        
        node.fillColor = SKColor.white
        node.isUserInteractionEnabled = true
        node.fillColor = SKColor.white
        node.position = position
    }
    
    /// Creates a track at `position` of (0, 0).
    convenience init() {
        self.init(position: CGPoint(x: 0, y: 0))
    }
    
}

