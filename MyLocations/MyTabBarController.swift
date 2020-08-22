//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Melissa  Garrett on 8/22/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation
import UIKit

class MyTabBarController: UITabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var childForStatusBarStyle: UIViewController? {
        return nil
    }
}
