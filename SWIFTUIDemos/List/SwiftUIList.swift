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
        NavigationStack{
        List(hikesArray) { hike in
            
            NavigationLink(value:hike){
                ListTableViewCell(hike:hike)
            }
        }.navigationTitle("Hike").navigationDestination(for: Hike.self) { hike in
            Text(hike.name)
        }
        }
    }
}

#Preview {
    SwiftUIList()
}



struct ListTableViewCell:View{
    let hike:Hike
    var body: some View{
        HStack(alignment:.top){
            Image(hike.image).resizable().aspectRatio(contentMode: .fit).frame(width:100).clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            VStack(alignment:.leading){
            Text(hike.name)
            Text("\(hike.miles.formatted()) miles")
        }
    }
    }
}
