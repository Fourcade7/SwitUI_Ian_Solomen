//
//  WorkWithButton.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 08/03/24.
//

import Foundation
import SwiftUI


private struct Lesson6:View{
    @State var showtext=false
    var body: some View{
        VStack{
            Button(action: {
                showtext.toggle()
            }){
                Text("Go show me text")
            }.buttonStyle(.borderedProminent)
            
            Button("PR2077"){
                
            }.padding()
                .background(.green)
                .cornerRadius(15)
            
            Button(action: {
                showtext.toggle()
            }){
                Text("Go show me text")
                    .padding()
                    .background(.green)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

struct Lesson6Preview:PreviewProvider{
    static var previews: some View{
        Lesson6()
    }
}
