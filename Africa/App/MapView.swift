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
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
            }//Custom Annotation
        })
    }
}

//MARK:- PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 11 Pro")
    }
}
