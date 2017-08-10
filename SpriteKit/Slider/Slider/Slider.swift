//
//  Slider.swift
//  Slider
//
//  Created by Wesley Van der Klomp on 8/9/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//

import Foundation
import SpriteKit

/// A user interface which the user can select and drag a knob to change a value.
struct Slider {
    
    private let knob: SliderKnob
    private let track: SliderTrack
    
    /// The position of the slider in it's parents coordinate system.
    var position: CGPoint {
        didSet {
            node.position = position
        }
    }
    
    var value: Int
    
    /// A SliderNode (subclass of SKShapeNode) for adding to a SpriteKit scene.
    ///
    /// Things like position, size, or color are all updated automatically when you change the properties of a `Slider` instance. So you should rarely need to set properties of this `node` property directly.
    let node: SliderNode
    
    
    
    
    let size: CGSize
    
    private var center: CGPoint {
        return CGPoint(x: size.width / 2, y: size.height / 2)
    }
    
    
    /// Creates a Slider which containts a knob and track. Default value is 50.
    init() {

        position = CGPoint(x: 0, y: 0)
        value = 50
        size = CGSize(width: 300, height: 100)
        
        knob = SliderKnob()
        
        track = SliderTrack()
        
        
        node = SliderNode(rect: CGRect(origin: position, size: size))
        
        knob.position = center
        track.position = center
        
        
        
        node.addChild(track.node)
        node.addChild(knob.node)
        
        
        print(node.frame)
    }
    
}
