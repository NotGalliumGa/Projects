//
//  UNH_Campus_CompassApp.swift
//  UNH_Campus_Compass
//
//  Created by Galven on 3/2/24.
//

import SwiftUI

@main
struct UNH_Campus_CompassApp: App {
    
    @StateObject private var lvm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(lvm)
            //ContentView()
        }
    }
}
