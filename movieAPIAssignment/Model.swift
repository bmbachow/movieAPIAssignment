//
//  Model.swift
//  movieAPIAssignment
//
//  Created by Brian Bachow on 2/11/22.
//

import Foundation


struct Movie: Codable {
    let duration: Double?
    let plays: Int?
    let transcodings: [Transcoding]?
    let title: String?
}


struct Transcoding: Codable {
    let id: String?
    let size: Int?
    let height: Int?
    let state: String?
    let width: Int?
}

typealias Movies = [Movie]
