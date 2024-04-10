//
//  WorkWIthNavigationLink.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 10/04/24.
//

import Foundation
import SwiftUI


// LESSON 21_3


private struct SheetScreen:View{
    
    @Environment(\.dismiss) var dissmiss
    
    var body: some View{
        VStack{
            Text("Sheet Screen")
            Button("Back"){
                dissmiss()
            }
        }
    }
}

private struct Lesson21_3:View{
    @State var showsheet=false
    var body: some View{
        VStack{
            
            
            Button("Show sheet"){
                showsheet.toggle()
            }.sheet(isPresented: $showsheet){
                SheetScreen()
            }
            
            
        }
    }
}








// LESSON 21_3




// LESSON 21_2
private struct Game{
    var id=UUID()
    var name:String
    
}

private struct GameView:View{
    var name:String
    var body: some View{
        VStack{
            Text("\(name) Game screen")
        }
    }
}


private struct Lesson21_2:View{
    
    var games=[Game]()
    
    init(){
        games.append(Game(name: "Generals"))
        games.append(Game(name: "Dota"))
        games.append(Game(name: "CS GO"))
    }
    
    var body: some View{
        NavigationStack{
            VStack{
                List(games,id: \.self.id){item in
                    NavigationLink(destination: GameView(name: item.name)){
                        Text(item.name)
                    }
                   
                }
                
            }
        }
       
    }
}

// LESSON 21_2


// LESSON 21


private struct DetailView:View{
    var body: some View{
        VStack{
            Text("Detail screen")
        }
    }
}

private struct Lesson21:View{
    var body: some View{
        NavigationStack{
            VStack{
                
                NavigationLink( destination: DetailView()){
                    
                    Text("Detail Screen")
                        .padding(8)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                
                    
                }
                NavigationLink("Detail", destination: DetailView())
            }
        }
        
    }
}



struct Lesson21Preview:PreviewProvider{
    static var previews: some View{
        Lesson21_3()
    }
}
