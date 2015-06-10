//
//  MapViewController.swift
//  Findr
//
//  Created by Eli Motycka on 6/7/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//
/*
import UIKit
import MapKit
import GoogleMaps

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var camera = GMSCameraPosition.cameraWithLatitude(41.8262, longitude: -71.4032, zoom: 12)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        self.mapView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
        @IBAction func addPin(sender: UILongPressGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.Began{
            let coordinate = mapView.convertPoint(sender.locationInView(mapView), toCoordinateFromView: mapView)
            let itemLocation = MKPointAnnotation()
            itemLocation.coordinate.latitude = coordinate.latitude
            itemLocation.coordinate.longitude = coordinate.longitude
            mapView.addAnnotation(itemLocation)
        }
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

*/