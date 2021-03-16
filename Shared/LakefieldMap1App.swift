//
//  LakefieldMap1App.swift
//  Shared
//
//  Created by Branton Hung on 2021-03-09.
//

import SwiftUI

@main
struct LakefieldMap1App: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        
        WindowGroup {
            
            TabView{
                
            
            NavigationView{
                LocationsList(store: store)
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Locations")
            }
            
                NavigationView{
                    WorldMap(store: store)
                }
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
                
    
            }
        }
        
        
        
    }
}
