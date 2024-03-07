//
//  WorkWithGradients.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 06/03/24.
//

import Foundation
import SwiftUI



private struct Lesson4:View{
    var body: some View{
        VStack{
            Text("Pr2077")
                .font(.largeTitle)
                .padding()
                .background(LinearGradient(colors: [.blue,.brown], startPoint: .leading, endPoint: .bottomTrailing))
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

private struct Lesson4_1:View{
    var body: some View{
        
        let colors = Gradient(colors: [
            .black,
            .red,
            .green
        ])
        
        let radialgradient = 	RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
        let angulargradient =     AngularGradient(gradient: colors, center: .center)
        
        return Circle().strokeBorder(radialgradient,lineWidth: 50)//.fill(angulargradient)
       
       
    }
}


struct WorkWithGradientPreview:PreviewProvider{
    static var previews: some View{
        Lesson4_1()
    }
}
