//
//  Announcement.swift
//  CovidUpdateFeed
//
//  Created by Duncan Kent on 19/10/2021.
//

import Foundation

struct Announcement: Identifiable, Decodable {
    var id: String
    var body: String
    var date: String
    var has_expired: Bool
}

