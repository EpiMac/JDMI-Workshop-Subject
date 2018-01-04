//
//  CustomView.swift
//  RPS
//
//  Created by Alexandre Toubiana on 04/01/2018.
//  Copyright © 2018 Alexandre Toubiana. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = self.bounds.height / 2
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
}
