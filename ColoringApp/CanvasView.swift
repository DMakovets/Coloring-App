//
//  CanvasView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/22/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

struct TouchPointsAndColor {
    var color: UIColor?
    var width: CGFloat?
    var opacity: CGFloat?
    var points: [CGPoint]?
    
    init(color: UIColor, points: [CGPoint]?) {
        self.color = color
        self.points = points
    }
}

class CanvasView: UIView {

    var lines = [TouchPointsAndColor]()
    var strokeColor: UIColor = .black
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        lines.forEach { (line) in
            for (i, p) in (line.points?.enumerated())! {
                if i == 0 {
                    context.move(to: p)
                } else {
                    context.addLine(to: p)
                }
                context.setStrokeColor(line.color?.withAlphaComponent(line.opacity ?? 1.0).cgColor ?? UIColor.black.cgColor)
                context.setLineWidth(line.width ?? 1.0)
            }
            context.setLineCap(.round)
            context.strokePath()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append(TouchPointsAndColor(color: UIColor(), points: [CGPoint]()))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first?.location(in: nil) else {
            return
        }
        
        guard var lastPoint = lines.popLast() else {return}
        lastPoint.points?.append(touch)
        lastPoint.color = strokeColor
        lastPoint.width = 3
        lastPoint.opacity = 3
        lines.append(lastPoint)
        setNeedsDisplay()
    }
    
}
