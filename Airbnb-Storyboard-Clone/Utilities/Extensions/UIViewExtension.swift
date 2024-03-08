//
//  UIViewExtension.swift
//  Airbnb-Storyboard-Clone
//
//  Created by Swantan Barua on 07/03/24.
//

import UIKit

extension UIView {
    
    /**
     Makes the view circular by adjusting its corner radius based on the provided width and height.
     
     This function checks if the provided width and height are equal, indicating that the view can be made circular.
     If the width and height are not equal, it means the view cannot be made circular, so the function returns without making any changes.
     
     If the width and height are equal, the function sets the corner radius of the view's layer to half of the height,
     effectively making the view circular.
     
     - Parameters:
        - width: The width of the view.
        - height: The height of the view.
     */
    func makeCircular(
        width: CGFloat,
        height: CGFloat
    ) {
        // Check if the view can be made circular (i.e., width and height are equal)
        if height != width {
            // If width and height are not equal, the view cannot be made circular, so return without making any changes
            return
        } else {
            // Set the corner radius to half of the height to make the view circular
            self.layer.cornerRadius = height / 2
            self.clipsToBounds = true
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
        width: CGFloat,
        height: CGFloat,
        borderWidth: CGFloat,
        borderColor: CGColor
    ) {
        self.makeCircular(width: width, height: height)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
    }
    
}
