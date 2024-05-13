//
//  LocationDetailView.swift
//  UNH_Campus_Compass
//
//  Created by Lauren on 3/25/24.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var lvm: LocationViewModel
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                
                Spacer()
                
                // images
                if !(location.assetNames.isEmpty){
                    Image(location.assetNames[0])
                        .resizable()
                        .frame(width:250,height:250)
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    // title section
                    VStack(alignment: .center, spacing: 8) {
                        Text(location.name)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                        Text(location.use)
                            .font(.title)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    Divider()
                    
                    // description and link
                    VStack(alignment: .leading, spacing: 8) {
                        Text(location.description)
                            .padding()
                        
                        if let url = URL(string: location.link) {
                            Link("Read more on external website", destination: url)
                                .padding(.leading)
                                .font(.headline)
                        }
                    }
                    
                    Divider()
                    
                    // map preview
                    @State var camera: MapCameraPosition = .region(lvm.mapRegion)
                    Map(position: $camera) {
                        Annotation(location.name, coordinate: location.coordinates) {
                            LocationAnnotationView(location: location)
                        }
                    }
                    .ignoresSafeArea()
                        .allowsHitTesting(false)
                        .aspectRatio(1, contentMode: .fit)
                        .cornerRadius(20)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
            }
        }
        .ignoresSafeArea()
        .background(.regularMaterial)
        .overlay(
            Button {
                lvm.sheetLocation = nil
            } label: {
                Image(systemName: "xmark")
                    .font(.headline)
                    .padding(16)
                    .foregroundColor(.primary)
                    .background(.thickMaterial)
                    .cornerRadius(20)
                    .padding()
            },
            alignment: .topLeading)
    }
}

#Preview {
    LocationDetailView(location: LocationService.locations.first!)
        .environmentObject(LocationViewModel())
}
