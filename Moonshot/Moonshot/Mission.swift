//
//  Mission.swift
//  Moonshot
//
//  Created by Robert Guerra on 11/10/20.
//

import SwiftUI

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    // Properties
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    // Computed Properties
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        } else {
            return "N/A"
        }
    }
}
