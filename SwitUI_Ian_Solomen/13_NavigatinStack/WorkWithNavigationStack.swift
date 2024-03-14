//
//  WorkWithNavigationStack.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 14/03/24.
//

import Foundation

import SwiftUI


private struct Lesson13:View{
    var body: some View{
        NavigationStack{
            VStack{
                
            } .navigationTitle("Pr2077")            .navigationBarTitleDisplayMode(.large)
                .toolbar(){
                    ToolbarItem(placement:.principal){
                        Text("pr2077")
                    }
                    ToolbarItem(placement:.primaryAction){
                        HStack{
                            Button("GG"){
                                
                            }
                            Button("GG"){
                                
                            }
                        }
                      
                    }
                }
            
        }
        
    }
}



struct Lesson13Preview:PreviewProvider{
    static var previews: some View{
        Lesson13()
    }
}
