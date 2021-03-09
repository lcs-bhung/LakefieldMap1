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
            NavigationView{
                LocationsList(store: store)
            }
    }
}
}
