//
//  ViewController.swift
//  Finding_User_Location
//
//  Created by Ahmed T Khalil on 1/14/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit
import CoreLocation

//to use the user's location, you need to add a CoreLocation framework under 'Build Phases' tab
//then edit info.plist file to add 'NSLocationWhileInUseUsageDescription' (reason to want to use user's location) and 'NSAlwaysUsageDescription' (description if you always want to know their description)

//or just add the following to the source code of the info.plist file
/* 
<key>NSLocationWhenInUseUsageDescription</key>
<string>Because I want to know where you are!</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>Because I always want to know where you are!</string>
 */

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //the delegate object to receive update requests
        locationManager.delegate = self
        
        //how accurate you wish for the location to be
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //request for authorization to retrieve user's location (only while using app)
        locationManager.requestWhenInUseAuthorization()
        
        //start updating location after request is authorized
        locationManager.startUpdatingLocation()
        
    }
    
    //how do we actually receive locations?? with this function! (search: 'didUpdateLocations')
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print(locations)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

