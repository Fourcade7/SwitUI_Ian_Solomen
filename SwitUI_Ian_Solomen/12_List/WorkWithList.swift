//
//  WorkWithList.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 13/03/24.
//

import Foundation
import SwiftUI


private struct Music:View{
    
    var name:String
    
    var body: some View{
        VStack{
            Text("Name:\(name)")
                .background(.green)
        }
    }
}


private struct Lesson12:View{
    var body: some View{
        VStack{
            List{
                Section(
                    header:Text("Header"),
                    footer: Text("Uaxa")){
                        Music(name: "MMMMM")
                    }
                Section(
                    header:Text("Header"),
                    footer: Text("Uaxa")){
                        Music(name: "MMMMM")
                    }
                Music(name: "LLLLLL")
                Music(name: "MMMMM")
            }.listStyle(.grouped)
            
        }
    }
}



private struct RestaurantModel:Identifiable{
    //must for unique id
    var id=UUID()
    var name:String
}

private struct RestaurantItem:View{
    var restaurantModel:RestaurantModel
    var body: some View{
        VStack{
            Text("id: \(restaurantModel.id)\nFood: \(restaurantModel.name)")
        }
    }
}

private struct Lesson12_1:View{
    var foodlist=[
        RestaurantModel(name: "Polov"),
        RestaurantModel(name: "Burger"),
        RestaurantModel(name: "Cheese"),
    ]
    var body: some View{
        VStack{
            //without :Identifiable
            List(foodlist,id: \.self.id){ food in
                RestaurantItem(restaurantModel: food)
            }.listStyle(.grouped)
            //with :Idintifiable
            List(foodlist){ food in
                RestaurantItem(restaurantModel: food)
            }
        }
    }
    
    
}




struct Lesson12Preview:PreviewProvider{
    static var previews: some View{
        Lesson12_1()
    }
}
