//
//  GetData.swift
//  CovidUpdateFeed
//
//  Created by Duncan Kent on 19/10/2021.
//

import SwiftUI

class Api {
    func getAnnouncements(completion: @escaping ([Announcement]) -> () ) {
        guard let url = URL(string: "https://api.coronavirus.data.gov.uk/generic/announcements") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let announcements = try! JSONDecoder().decode([Announcement].self, from: data!)
            
            DispatchQueue.main.async {
                completion(announcements)
            }
            print(announcements)
        }
        .resume()
    }
}
