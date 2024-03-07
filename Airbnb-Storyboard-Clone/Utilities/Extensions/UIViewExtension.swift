//
//  UIViewExtension.swift
//  Airbnb-Storyboard-Clone
//
//  Created by Swantan Barua on 07/03/24.
//

import UIKit

extension UIView {
    
    /**
     Makes a UIView circular by setting its corner radius based on the provided width and height.
     If the width and height are equal, the view is already circular and no changes are applied.
     - Parameters:
     - view: The UIView to make circular.
     - width: The width of the view.
     - height: The height of the view.
     */
    func makeCircular(
        view: UIView,
        width: CGFloat,
        height: CGFloat
    ) {
        if height == width {
            return
        } else {
            view.layer.cornerRadius = height / 2
            view.clipsToBounds = true
        }
    }
    
    /**
     Applies a circular border to a UIView with the specified border width and color.
     - Parameters:
     - view: The UIView to apply the circular border.
     - width: The width of the view.
     - height: The height of the view.
     - borderWidth: The width of the border.
     - borderColor: The color of the border.
     */
    func applyCircularBorder(
        view: UIView,
        width: CGFloat,
        height: CGFloat,
        borderWidth: CGFloat,
        borderColor: CGColor
    ) {
        view.makeCircular(view: view, width: width, height: height)
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColor
    }
    
}
