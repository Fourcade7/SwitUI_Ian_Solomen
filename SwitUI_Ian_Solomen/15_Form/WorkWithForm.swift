//
//  WorkWithForm.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 16/03/24.
//

import Foundation

import SwiftUI


private struct Lesson15:View{
    
    var colors=["Red","Green","Blue"]
    @State var selectedcolor=0
    @State var additionalSettings=false
    
    var  body: some View{
        VStack{
            
            Form{
                Picker("Colors",selection: $selectedcolor){
                    ForEach(colors.indices,id: \.self){index in
                        Text(colors[index])
                    }
                }.pickerStyle(.segmented)
                
                Toggle(isOn: $additionalSettings){
                    Text("Additional Settings")
                }
                Section("Pr2077"){
                    Button("Save Changes"){
                        
                    }
                }
                
            }.tint(.red)

            
            
        }
    }
}

struct Lesson15Preview:PreviewProvider{
    static var previews: some View{
        Lesson15()
    }
}
