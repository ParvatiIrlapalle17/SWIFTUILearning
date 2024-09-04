//
//  MainContentView.swift
//  SWIFTUIDemos
//
//  Created by Apple on 26/08/24.
//

import Foundation
import SwiftUI
struct MainContentView: View {
    var body: some View {
        // Circle image
        Image("groupDiscussion").resizable().aspectRatio(contentMode: .fit).clipShape(.circle)
        // Image with Radius
        Image("groupDiscussion").resizable().aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
        
        //show and download image from url
        AsyncImage(url: URL(string: "https://media.istockphoto.com/id/1977348709/photo/laughing-young-businesswoman-talking-with-colleagues-in-an-office-hallway.jpg?s=612x612&w=is&k=20&c=u46buz4xE77KcbN7QkWYeQT2yMG_-fhAF76oAtmEQMM=")) { image in
            image.resizable()
        } placeholder: {
           ProgressView("Downloading....")
        }

    }
}
