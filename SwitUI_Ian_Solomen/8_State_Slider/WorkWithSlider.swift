//
//  WorkWithSlider.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 09/03/24.
//

import Foundation
import SwiftUI


private struct Lesson8:View{
    
    @State private var celsius:Double = 700.0
  
    var body: some View{
        
        VStack{
            Slider(value: $celsius, in:100...10000,step: 100)
                .padding()
            
           // Text("\(celsius)")
            Text(String(celsius.formatted(.number.precision(.fractionLength(0))))).font(.largeTitle)
        }
    }
}

struct Lesson8Preview:PreviewProvider{
    static var previews: some View{
        Lesson8()
    }
}
