//
//  MapView.swift
//  Bear Market
//
//  Created by Chris Spencer on 12/7/22.
//

import SwiftUI
import MapKit
 
struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
            latitude: 37.87,
            longitude: -122.27),
            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
    )
    var body: some View {
        Map(coordinateRegion: $region,
            showsUserLocation: true
        )
            .edgesIgnoringSafeArea(.all)
    }
}
 
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
