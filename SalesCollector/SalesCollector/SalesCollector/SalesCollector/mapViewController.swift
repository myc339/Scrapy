//
//  mapViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/24.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import MapKit
import GooglePlaces
import GoogleMaps

class mapViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {
    
    @IBOutlet weak var mapview: MKMapView!
    var locationManager = CLLocationManager()
    var resultsViewController: GMSAutocompleteResultsViewController?
    var searchController: UISearchController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupSearchController()
       locationManager.delegate=self
        locationManager.desiredAccuracy=kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // Do any additional setup after loading the view.
    }
//    func setupSearchController() {
//        resultsViewController = GMSAutocompleteResultsViewController()
//        searchController = UISearchController(searchResultsController: resultsViewController)
//        searchController?.searchResultsUpdater = resultsViewController
//
//        let searchBar = searchController!.searchBar
//        searchBar.sizeToFit()
//        searchBar.placeholder = "Search for places"
//        navigationItem.titleView = searchController?.searchBar
//        definesPresentationContext = true
//        searchController?.hidesNavigationBarDuringPresentation = false
//    }

    
    @IBAction func GetAddress(_ sender: UIButton) {
       
    }
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        mapview.centerCoordinate  = userLocation.location!.coordinate
    }
        
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation:CLLocation = locations[0]
        let latitude=userLocation.coordinate.latitude
        let longitude=userLocation.coordinate.longitude
        let latDelta:CLLocationDegrees=0.05
        let lonDelta:CLLocationDegrees=0.05
        let span=MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        let location=CLLocationCoordinate2D(latitude:latitude,longitude:longitude)
        let region=MKCoordinateRegion(center:location,span:span)
        
        self.mapview.setRegion(region,animated:true)
//        print

    }
    
}


