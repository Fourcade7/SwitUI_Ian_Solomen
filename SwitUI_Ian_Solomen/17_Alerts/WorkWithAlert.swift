//
//  WorkWithAlert.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 19/03/24.
//

import Foundation

import SwiftUI



private struct Lesson17:View{
    @State var showalert1=false
    var body: some View{
        VStack{
            Button("Show Alert"){
                showalert1 = !showalert1
            }
            .buttonStyle(.borderedProminent)
            .alert("Title Alert1",isPresented: $showalert1){
                Button("cancel",role: .cancel){}
                Button("destructive",role: .destructive){}
                Button("none",role: .none){}
                
            }
            
            Button("Show ActionSheet"){
                showalert1 = !showalert1
            }
            .buttonStyle(.borderedProminent)
            .confirmationDialog("Action Sheet title",isPresented: $showalert1){
                Button("cancel",role: .cancel){}
                Button("destructive",role: .destructive){}
                Button("none",role: .none){}
                
            }message: {
                Text("This is message")
            }
        }
    }
}



struct Lesson17Preview:PreviewProvider{
    static var previews: some View{
        Lesson17()
    }
}
