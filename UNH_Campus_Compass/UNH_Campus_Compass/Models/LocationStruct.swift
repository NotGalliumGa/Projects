//
//  LocationStruct.swift
//  UNH_Campus_Compass
//
//  Created by Galven on 3/2/24.
// This file creates a Location Object used for general purposes

import Foundation
import MapKit

struct Location : Identifiable, Equatable {
    
    // identifiable allows use in foreach loops
    let name : String
    let use : String
    let coordinates : CLLocationCoordinate2D
    let description : String
    let assetNames : [String]
    let link : String
    
    var id : String{name} // id for loops
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
