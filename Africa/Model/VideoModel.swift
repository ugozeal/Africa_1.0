//
//  VideoModel.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/17/21.
//

import SwiftUI

struct VideoModel: Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
