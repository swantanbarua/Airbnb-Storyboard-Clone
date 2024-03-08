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
        searchView.layer.cornerRadius = 30
        makeCircularFilterView()
    }
}

// MARK: - UI MODIFICATIONS
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
            borderWidth: 2,
            borderColor: UIColor(named: contrastPaletteBackground)?.cgColor ?? UIColor(.accentColor).cgColor
        )
    }
}
