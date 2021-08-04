//
//  ViewHelper.swift
//  Hubble
//
//  Created by Ivan Gabriel on 11.02.2021.
//

import Foundation
import UIKit

extension UIView {
    func centerHorizontally(deviation: NSInteger) {
        let constraint = NSLayoutConstraint(item: self,
                                            attribute: .centerX,
                                            relatedBy: .equal,
                                            toItem: superview,
                                            attribute: .centerX,
                                            multiplier: 1,
                                            constant: CGFloat(deviation))
        superview?.addConstraint(constraint)
    }

    func centerVertically(deviation: NSInteger) {
        let constraint = NSLayoutConstraint(item: self,
                                            attribute: .centerY,
                                            relatedBy: .equal,
                                            toItem: superview,
                                            attribute: .centerY,
                                            multiplier: 1,
                                            constant: CGFloat(deviation))
        superview?.addConstraint(constraint)
    }
    
    open func roundCorners(corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         layer.mask = mask
    }
    
    open func addShadow() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
    }
}
