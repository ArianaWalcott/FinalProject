//
//  Volunteer.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

import CoreLocationUI
import MapKit
import SwiftUI

struct Volunteer: View {
    @StateObject private var viewModel = VolunteerModel()
var body: some View {
        
     
    ZStack(alignment: .bottom) {
            
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .tint(.purple)
            
            
            LocationButton(.currentLocation) {
                print("")
            }
            .foregroundColor(.white)
            .cornerRadius(8)
            .labelStyle(.titleAndIcon)
            .symbolVariant(.fill)
            .tint(.purple)
            .padding(.bottom)
            }
        }
}

struct Volunteer_Previews: PreviewProvider {
    static var previews: some View {
        Volunteer()
    }
}

final class VolunteerModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40, longitude: 120), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    
    let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func requestAllowOnceLocationPermission(){
        locationManager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else {
            // show an error
            return
        }
        
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(center: latestLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
