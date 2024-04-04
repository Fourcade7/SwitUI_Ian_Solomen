//
//  WorkWIthPickerVertical.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 09/03/24.
//

import Foundation
import SwiftUI

private struct Lesson9:View{
    
    var colors=["black","white","green","red"]
    @State var selectedColor=0
    
    var body: some View{
        
        VStack{
            Form{
                Picker("Colors", selection: $selectedColor, content: {
                    ForEach(colors.indices,id:\.self){index in
                        Text(colors[index])
                    }
                }).pickerStyle(.segmented)
                
                Section("Selected colors"){
                    Text(colors[selectedColor])
                }
            }
           
           
        }
    }
}

struct Lesson9Preview:PreviewProvider{
    static var previews: some View{
        Lesson9()
    }
}
