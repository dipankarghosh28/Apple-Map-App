//
//  ViewController.swift
//  nav
//
//  Created by Dipankar Ghosh on 4/27/18.
//  Copyright © 2018 Dipankar Ghosh. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBAction func showme(_ sender: Any){
        let latitude:CLLocationDegrees = 39.0948825
        let longitude:CLLocationDegrees = -120.981227
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude,longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance,  regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "My House"
        mapItem.openInMaps(launchOptions: options)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

