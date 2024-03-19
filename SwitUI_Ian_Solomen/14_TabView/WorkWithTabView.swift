//
//  WorkWithTabView.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 15/03/24.
//

import Foundation
import SwiftUI


private struct Lesson14:View{
    var body: some View{
        NavigationStack{
            VStack{
                TabView{
                    
                    Text("First Page")
                        .tabItem{
                            Image(systemName: "1.circle")
                            Text("Tab1")
                        }
                    
                    Text("First Page")
                        .tabItem{
                            Image(systemName: "1.circle")
                            Text("Tab1")
                        }
                }.background(.red)
            }.navigationTitle("TabView")
        }
       
    }
}

private struct Lesson14_1:View{
    var body: some View{
        TabView {
            NavigationStack {
                List {
                    Text("Home Content")
                        .frame(height: 500)
                    Text("Home Content")
                        .frame(height: 500)
                }
                .navigationTitle("Home Title")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .toolbarBackground(

                // 1
                Color.yellow,
                // 2
                for: .tabBar)
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Text("Notification")
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            Text("Settings")
                .tabItem { 
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}


struct Lesson14Preview:PreviewProvider{
    static var previews: some View{
        Lesson14()
    }
}
 
