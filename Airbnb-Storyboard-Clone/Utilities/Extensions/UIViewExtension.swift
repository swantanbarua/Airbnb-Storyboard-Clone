//
//  UIViewExtension.swift
//  Airbnb-Storyboard-Clone
//
//  Created by Swantan Barua on 07/03/24.
//

import UIKit

extension UIView {
    
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
