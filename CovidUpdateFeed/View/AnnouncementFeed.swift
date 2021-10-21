//
//  AnnouncementFeed.swift
//  CovidUpdateFeed
//
//  Created by Duncan Kent on 19/10/2021.
//

import SwiftUI

struct AnnouncementFeed: View {
    
    @StateObject var viewModel: AnnouncementViewViewModel = AnnouncementViewViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem()], spacing: 16) {
                    ForEach(viewModel.announcements) { announcement in
                        AnnouncementCell(announcement: announcement)
                    }
                }
            }.navigationTitle("Covid Announcements")
            
        }
    }
    
}


struct AnnouncementFeed_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementFeed()
        AnnouncementFeed()
            .preferredColorScheme(.dark)
    }
}
