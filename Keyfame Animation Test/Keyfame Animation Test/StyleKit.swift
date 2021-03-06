//
//  StyleKit.swift
//  ProjectName
//
//  Created by Wesley Van der Klomp on 2/5/17.
//  Copyright © 2017 . All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//
//  This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
//



import UIKit

public class StyleKit : NSObject {

    //// Drawing Methods

    public dynamic class func drawRocket() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let finColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Gradient Declarations
        let rocketBodyGradient = CGGradient(colorsSpace: nil, colors: [UIColor.red.cgColor, UIColor.red.blended(withFraction: 0.5, of: finColor).cgColor, finColor.cgColor] as CFArray, locations: [0, 0.7, 1])!

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 23, y: 327))
        bezierPath.addCurve(to: CGPoint(x: 121, y: 317), controlPoint1: CGPoint(x: 23, y: 327), controlPoint2: CGPoint(x: 63, y: 311))
        bezierPath.addCurve(to: CGPoint(x: 218, y: 372), controlPoint1: CGPoint(x: 179, y: 323), controlPoint2: CGPoint(x: 218, y: 372))
        bezierPath.addCurve(to: CGPoint(x: 121, y: 428), controlPoint1: CGPoint(x: 218, y: 372), controlPoint2: CGPoint(x: 172, y: 426))
        bezierPath.addCurve(to: CGPoint(x: 23, y: 416), controlPoint1: CGPoint(x: 70, y: 430), controlPoint2: CGPoint(x: 23, y: 416))
        context.saveGState()
        bezierPath.addClip()
        context.drawLinearGradient(rocketBodyGradient, start: CGPoint(x: 23, y: 371.92), end: CGPoint(x: 218, y: 371.92), options: [])
        context.restoreGState()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 0, y: 309))
        bezier2Path.addCurve(to: CGPoint(x: 81, y: 316), controlPoint1: CGPoint(x: 41, y: 269), controlPoint2: CGPoint(x: 76, y: 307))
        bezier2Path.addCurve(to: CGPoint(x: 34, y: 323), controlPoint1: CGPoint(x: 86, y: 325), controlPoint2: CGPoint(x: 34, y: 323))
        finColor.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 0, y: 434))
        bezier3Path.addCurve(to: CGPoint(x: 81, y: 427), controlPoint1: CGPoint(x: 41, y: 474), controlPoint2: CGPoint(x: 76, y: 436))
        bezier3Path.addCurve(to: CGPoint(x: 34, y: 420), controlPoint1: CGPoint(x: 86, y: 418), controlPoint2: CGPoint(x: 34, y: 420))
        finColor.setFill()
        bezier3Path.fill()
    }

}



extension UIColor {
    func blended(withFraction fraction: CGFloat, of color: UIColor) -> UIColor {
        var r1: CGFloat = 1, g1: CGFloat = 1, b1: CGFloat = 1, a1: CGFloat = 1
        var r2: CGFloat = 1, g2: CGFloat = 1, b2: CGFloat = 1, a2: CGFloat = 1

        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)

        return UIColor(red: r1 * (1 - fraction) + r2 * fraction,
            green: g1 * (1 - fraction) + g2 * fraction,
            blue: b1 * (1 - fraction) + b2 * fraction,
            alpha: a1 * (1 - fraction) + a2 * fraction);
    }
}
