//
//  LocationsList.swift
//  LakefieldMap1
//
//  Created by Branton Hung on 2021-03-09.
//

import SwiftUI

struct LocationsList: View {
    
    @State private var searchText: String = ""
    
    @ObservedObject var store: LocationStore
    
    var body: some View {
        
        
        
        VStack{
            
            //Include the search bar view
            
            SearchBarView(text: $searchText)
            
            List {
                ForEach(store.places.filter({ filter in
                    if !searchText.isEmpty {
                        return
                            filter.name.lowercased().contains(searchText.lowercased())
                    } else {
                        return true
                    }
                }
                )) {
                    location in
                    NavigationLink(destination: LocationDetail(location: location)){
                        HStack{
                            Image(location.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 44, height: 44)
                            
                            HStack {
                                Text(location.name)
                                    .font(.subheadline)
                                
                            }
                        }
                        
                        
                        
                    }
                    
                    
                    .navigationTitle("Locations")
                }
            }
            
        }
        
    }
    
}
