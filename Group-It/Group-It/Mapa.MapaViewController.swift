//
//  Mapa.MapaViewController.swift
//  Group-It
//
//  Created by Student on 3/14/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapaViewController: UIViewController, CLLocationManagerDelegate {
    
    private var locationManager: CLLocationManager!
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
                
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(locationManager.location!)
        
        mapView.delegate = self
        
        let infoLocal = MapaInfoLocal(title: "NBB 2016 - Solar Cearense x Flamengo",
            locationName: "Paulo Sarasate",
            discipline: "Basquete",
            coordinate: CLLocationCoordinate2D(latitude: -3.7400, longitude: -38.5147))
        
        let infoLocal2 = MapaInfoLocal(title: "I Encontro Skate MP",
            locationName: "Marina Park",
            discipline: "Encontro Skate",
            coordinate: CLLocationCoordinate2D(latitude: -3.7200, longitude: -38.5267))
        
        let infoLocal3 = MapaInfoLocal(title: "Jogos Universitários",
            locationName: "Ginásio UNIFOR",
            discipline: "Futsal, Vôlei, Basquete",
            coordinate: CLLocationCoordinate2D(latitude: -3.770, longitude: -38.4780))
        
        let infoLocal4 = MapaInfoLocal(title: "Mundial de Atletismo",
            locationName: "Pista de Atletismo da UNIFOR",
            discipline: "Atletismo",
            coordinate: CLLocationCoordinate2D(latitude: -3.769, longitude: -38.4765))
        
        let infoLocal5 = MapaInfoLocal(title: "I Encontro Skate MP",
            locationName: "Marina Park",
            discipline: "Encontro Skate",
            coordinate: CLLocationCoordinate2D(latitude: -3.7200, longitude: -38.5267   ))
        
        let infoLocal6 = MapaInfoLocal(title: "I Encontro Skate MP",
            locationName: "Marina Park",
            discipline: "Encontro Skate",
            coordinate: CLLocationCoordinate2D(latitude: -3.7200, longitude: -38.5267))
        
        let infoLocalAtual = MapaInfoLocal(title: "Localização Atual",
            locationName: "",
            discipline: "",
            coordinate: (locationManager.location?.coordinate)!)
        
        mapView.addAnnotation(infoLocal)
        mapView.addAnnotation(infoLocal2)
        mapView.addAnnotation(infoLocal3)
        mapView.addAnnotation(infoLocal4)
        mapView.addAnnotation(infoLocal5)
        mapView.addAnnotation(infoLocal6)
        mapView.addAnnotation(infoLocalAtual)
    }
    
    func locationManager(manager:CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("locations = \(locations)")
    }
    
    @IBAction func didTouchLocationButton(sender: AnyObject) {
    }
    
}