//
//  WorkWIthText.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 03/03/24.
//

import Foundation
import SwiftUI



private struct lesson2_0:View{
    var body: some View{
        VStack{
            
            
            Text("Any SfwiftUI view can have its corners rounded using the cornerRadius() modifier. This takes a simple value in points that controls how pronounced the rounding should be.")
                .padding()
                .lineLimit(nil)
                .font(.title2)
                .multilineTextAlignment(.center)
                .background(.red)
                .foregroundColor(.white)
                .lineSpacing(10)
                //.kerning(10)
                // .tracking(10)
                //.padding()
                .cornerRadius(20)
                .padding()
                
               
            Text("Round Me")
                .padding()
                .background(.red)
                .cornerRadius(15)
                .onTapGesture {
                    
                }
            
                
            
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .center)
    }
}


private struct lesson2_1:View{
    var body: some View{
        VStack{
            Image("polov")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width,height: 150)
                .clipped()
            Image("moshxorda")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width,height: 150)
                .clipped()
            
            HStack(){
                Text("Pr 2077")
                Spacer()
                Text("Pr 2077")
                Spacer()
               Text("Pr 2077")
            }.padding(.horizontal,30)
        }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
    }
}




struct WotkWithTextPreview:PreviewProvider{
    static var previews: some View{
       lesson2_0()
    }
}
