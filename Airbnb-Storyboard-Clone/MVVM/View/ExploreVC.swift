//
//  ExploreVC.swift
//  Airbnb-Storyboard-Clone
//
//  Created by Swantan Barua on 27/02/24.
//

import UIKit

class ExploreVC: UIViewController {

    // MARK: - IBOUTLETS
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet var filterCircularView: UIView!
    
    // MARK: - VIEWCONTROLLER LIFECYCLE METHODS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialUISetup()
    }
}

// MARK: - UI MODIFICATIONS

extension ExploreVC {
    
    /**
     Sets up the initial UI configurations for the Explore view controller.
     
     This function calls other helper functions to apply specific UI configurations
     such as rounding the corners of the search view and making the filter view circular.
     */
    func initialUISetup() {
        applyCornerRadiusToSearchView()
        makeCircularFilterView()
    }
}

extension ExploreVC {
    
    /**
     Makes the filter view circular with specified dimensions, border width, and border color.
     
     This function applies circular border to the filter view with the given width and height.
     If a color named 'contrastPaletteBackground' exists in the asset catalog, it is used as the border color.
     Otherwise, the border color defaults to the accent color.
     
     - Note: The 'contrastPaletteBackground' color is used if available for better visual contrast.
             If not found, the accent color is used as a fallback.
     */
    func makeCircularFilterView() {
        filterCircularView.applyCircularBorder(
            width: 60,
            height: 60,
            borderWidth: 0.5,
            borderColor: UIColor(named: contrastPaletteLabel)?.cgColor ?? UIColor(.accentColor).cgColor
        )
    }
    
    /**
     Applies a corner radius to the search view.
     
     This function sets the corner radius of the search view to the specified value,
     giving it rounded corners.
     - Parameter cornerRadius: The corner radius value to be applied to the search view.
     */
    func applyCornerRadiusToSearchView() {
        searchView.applyCornerRadius(cornerRadius: 30)
    }
}
