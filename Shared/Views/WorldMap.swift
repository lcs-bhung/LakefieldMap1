//
//  WorldMap.swift
//  LakefieldMap1
//
//  Created by Branton Hung on 2021-03-10.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    
    //Get a refrence to the location store
    @ObservedObject var store: LocationStore
    
    
    //Center of LCS
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: store.places){
            location in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                
                
                NavigationLink(destination: LocationDetail(location: location)){
                    Image(location.logo)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width:70, height: 35)
                        .shadow(radius: 3)
                }
               
                
            }
            
        }
            .navigationTitle("Map")
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        WorldMap(store: testStore)
    }
}
