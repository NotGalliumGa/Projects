//
//  LocationViewModel.swift
//  UNH_Campus_Compass
//
//  Created by Lauren Broadbent on 3/22/24.
//

import Foundation
import SwiftUI
import MapKit

class LocationViewModel: ObservableObject {
    
    // list of all locations
    @Published var locations: [Location]
    
    // current location
    @Published var currLocation: Location {
        didSet {
            updateMapRegion(location: currLocation)
        }
    }
    
    // initializing with blank region
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
    
    // show list of locations
    @Published var showLocationList: Bool = false
    
    // show location detail sheet
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationService.locations
        self.locations = locations
        self.currLocation = locations.first!
        
        // updating region
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func openCloseList() {
        withAnimation(.easeInOut) {
            showLocationList = !showLocationList
        }
    }
    
    func switchLocation(location: Location) {
        withAnimation(.easeInOut) {
            currLocation = location
            showLocationList = false
        }
    }
    
    func nextLocation() {
        
        // get curr index
        guard let currIndex = locations.firstIndex(where: { $0 == currLocation }) else { return }
        
        // make sure next index is valid
        let nextIndex = currIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // back to 0
            guard let firstLocation = locations.first else { return }
            switchLocation(location: firstLocation)
            return
        }
        
        // next location
        let nextLocation = locations[nextIndex]
        switchLocation(location: nextLocation)
    }
    
    func filteredLocations(searchText: String) -> [Location] {
        if searchText.isEmpty {
            return locations
        } else {
            return locations.filter { $0.name.localizedCaseInsensitiveContains(searchText) || $0.use.localizedCaseInsensitiveContains(searchText) || $0.description.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
