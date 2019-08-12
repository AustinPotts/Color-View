//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Austin Potts on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }

    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }

}

