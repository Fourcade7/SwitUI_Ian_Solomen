//
//  WorkWithObservedPublishEnv.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 10/04/24.
//

import Foundation
import SwiftUI


private class Person:ObservableObject{
    @Published var pname:String=""
    @Published var psurname:String=""
}


private struct User{
    var fname:String="Pr"
    var lastname:String="7"
}

private struct Lesson20:View{
    @State var user = User()
    
    @ObservedObject var person:Person=Person()
    var body: some View{
        VStack{
            //Work with struct
            Text("\(user.fname) \(user.lastname)")
            TextField("First name", text: $user.fname)
                .padding(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.green, lineWidth: 2)
                )
                .padding(.horizontal)
            TextField("First name", text: $user.lastname)
                .padding(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.green, lineWidth: 2)
                ).padding(.horizontal)
            //Work with struct @State working
            
            Text("\(person.pname) \(person.psurname)")
            
            TextField("Name",text: $person.pname)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            TextField("Surname",text: $person.psurname)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
        }
    }
}



struct Lesson20Preview:PreviewProvider{
    static var previews: some View{
        Lesson20()
    }
}
