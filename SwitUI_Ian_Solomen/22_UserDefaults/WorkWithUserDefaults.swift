//
//  WorkWithUserDefaults.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 11/04/24.
//

import Foundation
import SwiftUI


//LESSON22_2

private struct Person:Codable{
    var fname:String=""
    var lname:String=""
}


private struct Lesson22_2:View{
    @State var textdata=""
    
    @State var mylist=[Person]()
    //@State var mylist=[Person(fname: "",lname: "")]
    let persons=[
        Person(fname: "Aminov", lname: "Fourcade 777")
    ]
    var body: some View{
        VStack{
            
           
            
            if mylist.count>0{
                Text(mylist[0].lname)
            }
            
            
            Button("Save"){
                do {
                    let encoder = JSONEncoder()
                    if let encoded = try? encoder.encode(persons) {
                        UserDefaults.standard.set(encoded, forKey: "personslist")
                    }
                } catch {
                    print("Error encoding the person object: \(error)")
                }
            }.buttonStyle(.borderedProminent)
            
            
            Button("Load"){
                if let personDataList = UserDefaults.standard.data(forKey: "personslist") {
                    let decoder = JSONDecoder()
                    
                    if let decodedPersonList = try? decoder.decode([Person].self, from: personDataList) {
                       mylist = decodedPersonList
                       textdata=mylist[0].lname
                    }
                }
                
            }.buttonStyle(.borderedProminent)
        }
    }
}











//LESSON22_2


//LESSON22_1

private struct User:Codable{
    var fname:String
    var lname:String
}

private struct Lesson22_1:View{
    
    let user=User(fname: "Pr", lname: "Aminov7")
    @State var text=""
    
    var body: some View{
        VStack{
            
            Text("data \(text)")
            
            Button("Load"){
                if let userData = UserDefaults.standard.data(forKey: "user") {
                    let decoder = JSONDecoder()
                    
                    if let decodedUser = try? decoder.decode(User.self, from: userData) {
                        text=decodedUser.lname
                    }
                }
                
            }.buttonStyle(.bordered)
            
            Button("Save"){
                
                do {
                    let encoder = JSONEncoder()
                    if let encoded = try? encoder.encode(user) {
                        UserDefaults.standard.set(encoded, forKey: "user")
                    }
                } catch {
                    print("Error encoding the person object: \(error)")
                }
            }.buttonStyle(.bordered)
            
        }
    }
}



//private func loadObject(key:String)->User{
//    guard let data = UserDefaults.standard.data(forKey: "person") else {
//        return
//    }do {
//        let decoder = JSONDecoder()
//        let person = try decoder.decode(User.self, from: data)
//    } catch {
//        // Fallback
//    }
//}


//private func saveObject<T>(obj:T){
//
//    let encoder=JSONEncoder()
//    if let data = try? encoder.encode(obj){
//        UserDefaults.standard.set(data, forKey: "MYOBJ")
//    }
//}






//LESSON22_1


// LESSON22
private struct Food{
    var name:String
    var price:Int
}

private struct Lesson22:View{
    @State var tapcount=load(key: "TAP")
    
    var foods=[Food(name: "Polov", price: 25000)]
    var body: some View{
        VStack{
            
            
            Text("Tap count \(tapcount)")
            Button("Click"){
                tapcount += 1
                save(count: tapcount)
                
            }.buttonStyle(.borderedProminent)
            
            
        }
    }
}

private func save(count:Int){
    UserDefaults.standard.set(count, forKey: "TAP")
}
private func load(key:String)->Int{
    return UserDefaults.standard.integer(forKey: key)
}


//LESSON22


 struct Lesson22Preview:PreviewProvider{
    static var previews: some View{
        Lesson22_2()
    }
}
