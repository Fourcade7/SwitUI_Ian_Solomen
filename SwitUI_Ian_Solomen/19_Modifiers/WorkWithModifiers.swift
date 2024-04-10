//
//  WorkWithModifiers.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 09/04/24.
//

import Foundation

import SwiftUI



private struct Lesson19:View{
    
    @State var choosecolor:Bool=false
    
    var body: some View{
        
        VStack{
            
            Button("Pr"){
                choosecolor.toggle()
            }.foregroundColor(choosecolor ? .green :.blue)
           
            
        }
    }
}


private struct Lesson19_1:View{
    var body: some View{
        VStack{
            
            customText(text: "pr ae")
                .customM()
              
            customText(text: "ps ai")
                .modifier(customModifier())
            
        }
    }
}

private struct customText:View{
    var text:String
    var body: some View{
        Text(text)
    }
}


private struct customModifier:ViewModifier{
   
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.black)
    }
    
    
}

extension View{
    
    func customM()->some View{
        self.modifier(customModifier())
            
    }
}

struct Lesson19Preview:PreviewProvider{
    static var previews: some View{
        Lesson19_1()
    }
}


