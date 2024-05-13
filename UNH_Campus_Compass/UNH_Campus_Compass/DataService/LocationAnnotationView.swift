//
//  LocationAnnotationView.swift
//  UNH_Campus_Compass
//
//  Created by Lauren on 3/23/24.
//

import SwiftUI

struct LocationAnnotationView: View {
    
    
    @EnvironmentObject private var lvm: LocationViewModel
    let location: Location
    
    let navy = Color(red: 0, green: 0, blue: 140/255)
    
    var body: some View {
        
        VStack(spacing: 0) {
            if location.use == "Core" {
                Image(systemName: "book.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Dining" {
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Transportation" {
                Image(systemName: "train.side.front.car")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Health" {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Recreation" {
                Image(systemName: "figure.walk.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Athletics" {
                Image(systemName: "sportscourt.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Administration" {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else if location.use == "Residence" {
                Image(systemName: "bed.double.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)
            } else {
                Image(systemName: "graduationcap.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(navy)
                    .cornerRadius(36)            }
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .foregroundColor(navy)
        }
    }
    
    private func getIcon() -> String {
        if location.use == "Core" {
            return "book.circle.fill"
        } else if location.use == "Dining" {
            return  "fork.knife.circle.fill"
        } else if location.use == "Transportation" {
            return "train.side.front.car"
        } else if location.use == "Health" {
            return "heart.circle.fill"
        } else if location.use == "Recreation" {
            return "figure.walk.circle.fill"
        } else if location.use == "Athletics" {
            return "sportscourt.circle.fill"
        } else if location.use == "Administration" {
            return "person.circle.fill"
        } else if location.use == "Residence" {
            return "bed.double.circle.fill"
        } else {
            return "graduationcap.circle.fill"
        }
    }}

#Preview {
    LocationAnnotationView(location: LocationService.locations.first!)
        .environmentObject(LocationViewModel())
}
