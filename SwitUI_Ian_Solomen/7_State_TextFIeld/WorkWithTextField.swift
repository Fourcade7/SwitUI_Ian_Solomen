//
//  WorkWithTextField.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 09/03/24.
//

import Foundation
import SwiftUI


private struct Lesson7:View{
    
    @State private var name=""
    var body: some View{
        VStack{
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onChange(of: name) { newValue in
                                    
                                    if newValue.count >= 3 {
                                        // Call function
                                    }
                }
            
            SecureField("Enter your password", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text(name)
        }
    }
}


struct Lesson7Preview:PreviewProvider{
    static var previews: some View{
       Lesson7()
    }
}
