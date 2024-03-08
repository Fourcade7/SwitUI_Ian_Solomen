//
//  WorkWithToggle.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 07/03/24.
//

import Foundation
import SwiftUI




private struct Lesson5:View{
    
    @State private var showToggle=false
    @State  var statetext = "On"
    var body: some View{
        VStack{
            Form{
                Toggle(isOn: $showToggle){
                    Text("Toggle \(statetext)")
                }.tint(.blue)
                
            }
            Button("GG"){
                statetext="xaxaxax"
            }
           
            
//            if showToggle {
//                statetext = "On"
//            }else{
//                statetext = "Off"
//            }
            
        }
    }
}


struct Lesson5Preview:PreviewProvider{
    static var previews: some View{
        Lesson5()
    }
}
