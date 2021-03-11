//
//  LocationDetail.swift
//  LakefieldMap1
//
//  Created by Branton Hung on 2021-03-09.
//

import SwiftUI

struct LocationDetail: View {
    
    let location: Location
    
    var body: some View {
         
        ScrollView{
            
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
                
            Spacer()
            
                
                Text(location.description)
                    .padding(.horizontal)
            
            
    }
        
        .navigationTitle(location.name)
        .padding(.horizontal)
    }

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: Location.example)
        }
    }
}
}
