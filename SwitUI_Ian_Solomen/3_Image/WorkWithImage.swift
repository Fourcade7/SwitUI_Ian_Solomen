//
//  WorkWithImage.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 06/03/24.
//

import Foundation
import SwiftUI


private struct Lesson3:View{
    var body: some View{
        VStack{
            Image("shashlik")
                .resizable()
                .scaledToFill()
                .frame(width: 250,height: 250)
                //.padding()
                //.clipShape(Circle())
                .clipShape(RoundedRectangle(cornerRadius: 19))
            
            Text("Fourcade 2077")
                .foregroundColor(.white)
                .background(
                    Image("somsa")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150,height: 150)
                        .clipped()
                        .clipShape(Circle())
                )
        }
    }
}



struct WorkWithImagePreview:PreviewProvider{
    static var previews: some View{
        Lesson3()
    }
}
