//
//  LocationsList.swift
//  LakefieldMap1
//
//  Created by Branton Hung on 2021-03-09.
//

import SwiftUI

struct LocationsList: View {
    
    @ObservedObject var store: LocationStore
    
    var body: some View {
        List(store.places) { location in
         
            //Create a navigation link to the detail view
            //example of abstraction into action
            NavigationLink(destination: LocationDetail(location: location)){
                    HStack{
                        Image(location.heroPicture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                        
                        VStack(alignment: .leading) {
                            Text(location.name)
                                .font(.subheadline)
                             
                        }
                    }
                }
            
        navigationTitle("Locations")
        }
    }
}


struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        LocationsList(store: testStore)
    }
}
