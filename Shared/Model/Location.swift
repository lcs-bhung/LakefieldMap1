//
//  Location.swift
//  LakefieldMap1
//
//  Created by Branton Hung on 2021-03-09.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String


static let example = Location(id: 1,
                              name: "Lakefield College School",
                              description: "Lakefield College School is a private day and boarding school located north of the village of Lakefield, Ontario.",
                              latitude: 44.43948652171136,
                              longitude: -78.26544785999143,
                              heroPicture: "LakefieldCollegeSchool"
                             )
}
                              
