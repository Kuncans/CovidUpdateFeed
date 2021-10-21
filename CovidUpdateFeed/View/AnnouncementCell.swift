//
//  AnnouncementCell.swift
//  CovidUpdateFeed
//
//  Created by Duncan Kent on 19/10/2021.
//

import SwiftUI

struct AnnouncementCell: View {
    
    var announcement: Announcement = Announcement(id: "Placeholder", body: "Placeholder", date: "Placeholder", has_expired: true)
        
    var body: some View {
        
        ZStack {
            
            VStack (alignment: .leading) {
                
                HStack {
                    Image(systemName: "dot.radiowaves.left.and.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor((statusColor(announcement.has_expired)).opacity(0.75))

                    Text(announcement.date)
                        .foregroundColor(.primary)
                        .font(.headline)
                        .padding(.leading)
                    Spacer()
                    Text(statusText(announcement.has_expired))
                        .font(.subheadline).bold()
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(statusColor(announcement.has_expired)).opacity(0.35))
                        
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                }
                .padding(.horizontal, 18)
                .padding(.top, 8)

                Text(announcement.body)
                    .font(.subheadline)
                    .padding([.leading, .trailing, .bottom])
                    .padding(.top, 6)
                    .foregroundColor(.primary)
                    
                    
            }
            
        }
        .background(Color.init(UIColor.systemGray6))
        .cornerRadius(25)
        .padding(.horizontal)
        .shadow(color: .secondary, radius: 4, x: 0, y: 0)
        
    }
    
    func statusColor(_ status: Bool) -> Color {
        return status ?  Color.red : Color.green
    }
        
    func statusText(_ status: Bool) -> String {
        return status ? "Expired" : "Active"
    }

}

struct AnnouncementCell_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementCell()
    }
}

