//
//  WorkWithStepper.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 09/03/24.
//

import Foundation
import SwiftUI



private struct Lesson10:View{
    @State var age = 24
    var body: some View{
        VStack{
            
            Stepper("Your \(age)", value: $age,in:0...100)
                .padding()
            Text("\(age)")
            
            Stepper("Your \(age)",onIncrement: {
                age=age+10
            },onDecrement: {
                age=age-10
            }).padding()
        }
    }
}

struct Lesson10Preview:PreviewProvider{
    static var previews: some View{
        Lesson10()
    }
}
