//
//  LocationStore.swift
//  LakefieldMap1
//
//  Created by Branton Hung on 2021-03-09.
//

import Foundation

class LocationStore: ObservableObject {
    var places: [Location]
    
    init() {
        //get the pointer to the file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        //Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //Convert files from JSON to an array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        //Sort the list of locations in alphabetical order
        places.sort(by: {$0.name < $1.name})
        
    }
    
}

var testStore = LocationStore()

func filteredLocations(with searchText: String, locations: [Location] ) -> [Location] {
    
    var locationss: [Location] = []
    
    if  searchText.isEmpty {
        return locations
    } else {
        for location in locations {
            if location.name.contains(searchText) {
                locationss.append(location)
            }
        }
      return locationss
    }
    
}
