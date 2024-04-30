//
//  NoteApp.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 13/04/24.
//

import Foundation
import SwiftUI


private struct NoteApp:View{
    var body: some View{
        
        NavigationStack{
            VStack{
                
            }.navigationTitle("Note App")
                .toolbar(){
                    ToolbarItem(placement: .destructiveAction){
                        
                        NavigationLink(destination:AddScreen()){
                            Image(systemName: "doc.badge.plus")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 30,height: 30)
                            
                        }
                        
                    }
                    
                }
            
        }
        
    }
}

private struct Note:Codable{
    var title:String
    var price:String
}


private struct AddScreen:View{
    
    @State var notetitle=""
    @State var price=""
    
    @State var textdata="asdf7daa"
    
    let list=["out","income"]
    @State var selected=0
    
    @State var array=[Note]()
    
    init(){
        if let noteDataList = UserDefaults.standard.data(forKey: "notelist") {
            let decoder = JSONDecoder()
            
            if let decodedNoteList = try? decoder.decode([Note].self, from: noteDataList) {
               array = decodedNoteList
               //textdata=array[0].title
                print(textdata)
                print(decodedNoteList.count)
            }
        }
    }
    
    var body: some View{
        NavigationStack{
            VStack{
                Form{
                    TextField("Title", text: $notetitle)
                    // .textFieldStyle(.roundedBorder)
                    TextField("0 $", text: $price)
                    Picker("type",selection: $selected){
                        ForEach(list.indices, id: \.self){index in
                            Text(list[index])
                        }
                    }
                 
                    HStack{
                       
                       
                        Button("Saveeeeee"){
                            do {
                                array.append(Note(title: notetitle, price: price))
                                print(array.count)
                                let encoder = JSONEncoder()
                                if let encoded = try? encoder.encode(array) {
                                    UserDefaults.standard.set(encoded, forKey: "notelist")
                                    print("savedd")
                                }
                            } catch {
                                print("Error encoding the person object: \(error)")
                            }
                        }
                        Spacer()
                        Image(systemName: "text.badge.plus")
                            .resizable()
                            .foregroundColor(.blue)
                            .frame(width: 20,height: 20)
                    }
                       
                    
                    
                }
               
                
               // Spacer()
                
            }.navigationTitle("Add new   Note \(textdata)")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}


struct NoteAppPreview:PreviewProvider{
    static var previews: some View{
        NoteApp()
    }
}



