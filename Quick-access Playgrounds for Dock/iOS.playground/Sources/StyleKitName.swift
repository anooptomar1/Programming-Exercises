//
//  StyleKitName.swift
//  ProjectName
//
//  Created by AuthorName on 6/30/16.
//  Copyright (c) 2016 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class StyleKitName : NSObject {

    //// Drawing Methods

//// PaintCode Trial Version
//// www.paintcodeapp.com

    public class func drawMyFirstCanvas(hVal hVal: CGFloat = 43) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color3 = UIColor(red: 0.626, green: 0.778, blue: 0.831, alpha: 1.000)

        //// Rectangle Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 64, 75)
        CGContextRotateCTM(context, -180 * CGFloat(M_PI) / 180)

        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 20, height: hVal))
        color3.setFill()
        rectanglePath.fill()

        CGContextRestoreGState(context)
    }

}