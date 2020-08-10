//
//  LocationDetailsViewController.swift
//  MyLocations
//
//  Created by Melissa  Garrett on 8/10/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation
import UIKit

class LocationsDetailsViewController: UITableViewController {
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    //MARK: - Actions
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
}
