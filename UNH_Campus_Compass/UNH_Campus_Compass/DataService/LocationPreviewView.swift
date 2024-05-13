//
//  LocationPreviewView.swift
//  UNH_Campus_Compass
//
//  Created by Lauren on 3/23/24.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var lvm: LocationViewModel
    let location: Location
    
    var body: some View {
        
        HStack {
            
            // text
            // make it so preview pic appears to right of words maybe... looks good rn
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                Text(location.use)
                    .font(.subheadline)
                Text(location.description)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                HStack(spacing: 0) {
                    
                    // learn more
                    Button {
                        lvm.sheetLocation = location
                    } label: {
                        Text("Learn more")
                            .foregroundColor(.black)
                            .frame(width: 150)
                    }
                    .buttonStyle(.bordered)
                    
                    // makes space in middle
                    Spacer()
                    
                    // next
                    Button {
                        lvm.nextLocation()
                    } label: {
                        Text("Next")
                            .foregroundColor(.black)
                            .frame(width: 150)
                    }
                    .buttonStyle(.bordered)
                }
                .frame(maxWidth: .infinity)
                //.padding()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(.regularMaterial)
            )
        }
    }
}

#Preview {
    LocationPreviewView(location: LocationService.locations.first!)
        .padding()
        .environmentObject(LocationViewModel())
}
