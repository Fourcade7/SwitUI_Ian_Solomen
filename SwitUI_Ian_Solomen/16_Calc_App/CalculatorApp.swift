//
//  CalculatorApp.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 17/03/24.
//

import Foundation
import SwiftUI


private struct Lesson16:View{
    
    @State var text=""
    @State var numberpeople=1
    
    @State var pracentage=0
    
    var pracenteges=[0,5,10,15,20]
    
    @State var showtoggle=true
    var dob=25.000
    var body: some View{
        NavigationStack{
            VStack{
                
                Form{
                    Section{
                        TextField("Amount", text: $text)
                        Picker("Number of people", selection: $numberpeople){
                            ForEach(2...100,id: \.self){ item in
                                Text("\(item)")
                            }
                        }.pickerStyle(.menu)
                    }
                    Section("Section2"){
                        Picker("Choose",selection: $pracentage){
                            ForEach(pracenteges,id: \.self){item in
                                Text("\(item)%")
                            }
                        }.pickerStyle(.segmented)
                        Toggle("Selected", isOn: $showtoggle)
                        Text(String(dob.formatted(.number.precision(.fractionLength(2)))))
                        Button("Save Changes"){
                            
                        }.buttonStyle(.bordered)
                    }
                }
                
            }.navigationTitle("Calc App")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}



struct Lesson16Preview:PreviewProvider{
    static var previews: some View{
        Lesson16()
    }
}
