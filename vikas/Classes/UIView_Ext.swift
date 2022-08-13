//
//  UIView_Ext.swift
//  vikas
//
//  Created by RG Infotech on 13/08/22.
//

import Foundation
import UIKit

extension UIView{
   public func createDottedLine(width: CGFloat, color: CGColor) {
       let caShapeLayer = CAShapeLayer()
     let shapeRect = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
       caShapeLayer.strokeColor = color
       caShapeLayer.lineWidth = width
    // caShapeLayer.position = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
       caShapeLayer.lineDashPattern = [6,2]
     caShapeLayer.frame = shapeRect
     caShapeLayer.fillColor = nil
     caShapeLayer.path = UIBezierPath(rect: shapeRect).cgPath
     print(self.layer.frame,caShapeLayer.frame,self.layer.bounds)
     self.layer.sublayers?.removeAll()
     self.layer.addSublayer(caShapeLayer)
     
    }
   public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
