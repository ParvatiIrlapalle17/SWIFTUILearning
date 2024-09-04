//
//  SwiftUIList.swift
//  SWIFTUIDemos
//
//  Created by Apple on 26/08/24.
//

import Foundation
import SwiftUI
struct SwiftUIList : View{
    
    let hikesArray = [Hike(name: "Mahabalesher", image: "groupDiscussion", miles: 2),
                      Hike(name: "Lonawala", image: "groupDiscussion", miles: 5),
                      Hike(name: "khandala", image: "groupDiscussion", miles: 10)]
    var body: some View{
        List(hikesArray) { hike in
            HStack(alignment:.top){
                Image(hike.image).resizable().aspectRatio(contentMode: .fit).frame(width:100).clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                VStack(alignment:.leading){
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
        }
    }
}




