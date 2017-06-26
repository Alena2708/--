//
//  Mapviewcontroler.swift
//  CandySearch
//
//  Created by Admin on 21.06.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//


import UIKit
import GoogleMaps
import GooglePlaces
import CoreLocation

class MapViewwController: UIViewController  ,GMSAutocompleteViewControllerDelegate ,GMSMapViewDelegate ,CLLocationManagerDelegate  {
    
    @IBAction func btnSetup(_ sender: Any) {
        
        let autocompleteController = GMSAutocompleteViewController()
        autocompleteController.delegate = self as! GMSAutocompleteViewControllerDelegate
        present(autocompleteController, animated: true, completion: nil)
        
    }
    
    
    
    var detailCity: City!
    
    
    var locationManager = CLLocationManager()
    var placesClient : GMSPlacesClient?
    
    
    @IBOutlet weak var viewtomap: UIView!
    
    
    
    var mapView = GMSMapView()
    
    var categid = [Int]()
    
    // Declare GMSMarker instance at the class level.
    let infoMarker = GMSMarker()
    
    
    
    @IBAction func locationbutton(_ sender: Any) {
        // User Location
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
    
}
    override func loadView() {
        
        let camera = GMSCameraPosition.camera(withLatitude: CLLocationDegrees(detailCity.coordinateX), longitude: CLLocationDegrees(detailCity.coordinateY), zoom: 15)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.clear()
        mapView.delegate =  self
        self.viewtomap  = mapView
}
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView()
        
}
    
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        
        let camera = GMSCameraPosition.camera(withLatitude: place.coordinate.latitude, longitude: place.coordinate.longitude, zoom: 12.0)
        self.viewtomap  = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        let marker = GMSMarker()
        marker.position = place.coordinate
        marker.title = place.name
        marker.snippet = place.formattedAddress
        marker.map = self.view as! GMSMapView?
        self.navigationItem.title = place.name
        
        
        dismiss(animated: true, completion: nil)
    }
    
    
    ///Google Search controller
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        // TODO: handle the error.
        print("Error: ", error.localizedDescription)
        
    }
    // User canceled the operation.
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    // Turn the network activity indicator on and off again.
    func didRequestAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func didUpdateAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    //Location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation = locations.last
        // let center = CLLocationCoordinate2D(latitude: userLocation!.coordinate.latitude, longitude: userLocation!.coordinate.longitude)
        
        let camera = GMSCameraPosition.camera(withLatitude: userLocation!.coordinate.latitude,
                                              longitude: userLocation!.coordinate.longitude, zoom: 13.0)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        self.viewtomap  = mapView
        
        locationManager.stopUpdatingLocation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
}

