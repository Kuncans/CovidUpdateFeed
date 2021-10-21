//
//  AnnouncementFeedViewModel.swift
//  CovidUpdateFeed
//
//  Created by Duncan Kent on 19/10/2021.
//

import SwiftUI

class AnnouncementViewViewModel: ObservableObject {
    
    @Published private (set) var announcements: [Announcement]
    
    init() {
        self.announcements = []
        getAnnouncementsFromData()
        print(announcements)
    }
    
    func getAnnouncementsFromData() {
        Api().getAnnouncements { announcements in
           return self.announcements = announcements
        }
    }
    
}
