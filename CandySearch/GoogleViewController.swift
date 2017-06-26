//
//  GoogleViewController.swift
//  CandySearch
//
//  Created by Admin on 29.03.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//
/*
import UIKit
import GoogleMaps
import GooglePlaces
import CoreLocation

class GoogleViewController: UIViewController  ,GMSMapViewDelegate ,CLLocationManagerDelegate  {

    var detailCity: City!   
    var locationManager = CLLocationManager()
    var places = [City ]()
    var mapView = GMSMapView()
    
    var categid = [Int]()
    
    // Declare GMSMarker instance at the class level.
    let infoMarker = GMSMarker()
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBAction func btnSetup(_ sender: Any) {
        
        let autocompleteController = GMSAutocompleteViewController()
        autocompleteController.delegate = self as! GMSAutocompleteViewControllerDelegate
        present(autocompleteController, animated: true, completion: nil)
        
    }
    
    @IBAction func locationbutton(_ sender: Any) {
        // User Location
        locationManager.delegate = self as! CLLocationManagerDelegate
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
    }
    override func loadView() {
        

    let camera = GMSCameraPosition.camera(withLatitude: CLLocationDegrees(detailCity.coordinateX), longitude: CLLocationDegrees(detailCity.coordinateY), zoom: 15)
    let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
    mapView.clear()
    mapView.delegate =  self
    self.view  = mapView
        
      //  if places.i
    
    }
    
       
               
       
        
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

*/


