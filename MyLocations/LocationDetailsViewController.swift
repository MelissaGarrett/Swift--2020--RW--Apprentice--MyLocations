//
//  LocationDetailsViewController.swift
//  MyLocations
//
//  Created by Melissa  Garrett on 8/10/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

// a private GLOBAL variable (only visible inside this file)
// create here so you only create the instance once and re-use it
private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter
}()

class LocationsDetailsViewController: UITableViewController {
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    var placemark: CLPlacemark?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = ""
        categoryLabel.text = ""
        
        latitudeLabel.text = String(format: "%.8f", coordinate.latitude)
        longitudeLabel.text = String(format: "%.8f", coordinate.longitude)
        
        if let placemark = placemark {
            addressLabel.text = string(from: placemark)
        } else {
            addressLabel.text = "No Address Found"
        }
        
        dateLabel.text = format(date: Date())
    }
    
    //MARK: - Actions
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK:- Helper Methods
    func string(from placemark: CLPlacemark) -> String {
        var text = ""
        
        if let s = placemark.subThoroughfare { // house number
            text += s + " "
        }
        
        if let s = placemark.thoroughfare { // street name
            text += s + ", "
        }
                
        if let s = placemark.locality { // city
            text += s + ", "
        }
        
        if let s = placemark.administrativeArea { // state
            text += s + " "
        }
        
        if let s = placemark.postalCode {
            text += s + ", "
        }
        
        if let s = placemark.country {
            text += s
        }
        
        return text
    }
    
    func format(date: Date) -> String {
        return dateFormatter.string(from: date)
    }
}
