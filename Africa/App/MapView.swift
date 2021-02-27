//
//  MapView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK:- PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.60028, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    //MARK:- BODY
    var body: some View {
        //MARK:- No1 Basic Map
//        Map(coordinateRegion: $region)
        
        //MARK:- No2 Advanced MAp
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            //Option A : Old Style (Always Static)
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            //Option B : New Style (Always Static)
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            //Option B Custom Annotations for map interations
//            MapAnnotation(coordinate: item.location) {
//                Image(item.image)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32)
//            }//Custom Annotation
            
            //Option D: complex Map Annotation Could be interactive
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })//: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }//: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
    }
}

//MARK:- PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 11 Pro")
    }
}
