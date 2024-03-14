//
//  WorkWithClick.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 10/03/24.
//

import Foundation

import SwiftUI



private struct Lesson11:View{
    var body: some View{
        VStack{
            Text("Click Meee")
                .onTapGesture {
                    print("clicked2")
                }
            Text("Click Meee2")
                .onTapGesture(count:2) {
                    print("clickeddddddddd")
                }
            
            Text("Click Meee3")
                .gesture(LongPressGesture(minimumDuration: 2)
                    .onEnded{_ in
                        print("Long clickeddd")
                    }
                )
            Image("polov")
                .resizable()
                .scaledToFill()
                .frame(width: 100,height: 100)
                .clipped()
                .gesture(
                    DragGesture(minimumDistance: 50)
                        .onEnded({_ in
                           print("Dragged")
                        })
                )
        }
    }
}



struct Lesson11Preview:PreviewProvider{
    static var previews: some View{
        Lesson11()
    }
}


