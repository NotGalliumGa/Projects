//
//  LocationListView.swift
//  UNH_Campus_Compass
//
//  Created by Lauren on 3/22/24.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var lvm: LocationViewModel
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            
            // background color
            Color.white
            
            VStack {
                // search bar
                TextField("Search", text: $searchText)
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                // list
                List {
                    ForEach(lvm.filteredLocations(searchText: searchText)) { location in
                        
                        // clear rectangle aroyund each location
                        Rectangle()
                            .stroke(Color.clear, lineWidth: 1)
                            .frame(height: 40)
                            .overlay(
                                
                            Button {
                                lvm.switchLocation(location: location)
                            } label: {
                                // text on button
                                VStack {
                                    Text(location.name)
                                        .font(.headline)
                                    Text(location.use)
                                        .font(.subheadline)
                                }
                            }
                            .frame(maxWidth: .infinity)
                        )
                    }
                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    LocationListView()
        .environmentObject(LocationViewModel())
}
