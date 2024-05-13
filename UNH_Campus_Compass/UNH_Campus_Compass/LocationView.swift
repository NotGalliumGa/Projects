//
//  LocationView.swift
//  UNH_Campus_Compass
//
//  Created by Lauren on 3/22/24.
//

import SwiftUI
import MapKit

struct LocationView: View {

    @EnvironmentObject var lvm: LocationViewModel

    
    var body: some View {
        ZStack {
            @State var camera: MapCameraPosition = .region(lvm.mapRegion)
            // map
            Map(position: $camera) {
                ForEach(lvm.locations) { location in
                    Annotation(location.name,coordinate: location.coordinates) {
                        LocationAnnotationView(location: location)
                            .scaleEffect(lvm.currLocation == location ? 1 : 0.75)
                            .onTapGesture {
                                lvm.switchLocation(location: location)
                            }
                    }
                }
            }
            .ignoresSafeArea()
                       
            ZStack {
                
                VStack {
                    Spacer()
                    ForEach(lvm.locations) { location in
                        if lvm.currLocation == location {
                            LocationPreviewView(location: location)
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                    }
                }
                
                // text and list
                VStack(spacing: 0) {
                
                    // text
                    VStack {
                        Button(action: lvm.openCloseList) {
                            VStack(spacing: 0) {
                                Text(lvm.currLocation.name)
                                    .font(.system(size: 24, weight: .bold))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                Text(lvm.currLocation.use)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity)
                                    .overlay(alignment: .leading) {
                                        Image(systemName: "arrow.down")
                                            .font(.system(size: 20))
                                            .foregroundColor(.black)
                                            .rotationEffect(Angle(degrees: lvm.showLocationList ? -180 : 0))
                                    }
                            }
                            .frame(minHeight: 1)
                            .frame(maxWidth: .infinity)                    }
                    }
                    .background(.ultraThickMaterial)
                    
                    if lvm.showLocationList {
                        LocationListView()
                    } else {
                        Spacer()
                    }
                }
            }
            .padding()
            .cornerRadius(60)
        }
        .sheet(item: $lvm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

#Preview {
    LocationView()
        .environmentObject(LocationViewModel())
}
