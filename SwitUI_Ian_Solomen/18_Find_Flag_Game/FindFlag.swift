//
//  FindFlag.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 06/04/24.
//

import Foundation


import SwiftUI


private struct Lesson18:View{
    
   
    @State  var foodimagenames = ["polov","somsa","moshxorda","shashlik","sholgomshorva"]
    
    @State var correctAnswer = Int.random(in: 0...2)
    @State var totalScore:Int = 0
    @State var showAlert:Bool = false
    @State var scoreTitle:String = ""
    
    init(){
        
        foodimagenames.shuffle()
    }
    
    var body: some View{
        ZStack{
            
            LinearGradient(colors: [.teal,.indigo], startPoint: .leading, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
           
            VStack{
                
                Text("Выбери флаг")
                    .foregroundColor(.white)
                    .font(.headline)
                Spacer().frame(height: 20)
                Text(foodimagenames[correctAnswer])
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer().frame(height: 20)
                
                HStack(spacing:10){
                    Image(foodimagenames[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 70)
                        .cornerRadius(10)
                        .clipped()
                        .onTapGesture {
                            imageClicked(number: 0)
                            showAlert=true
                        }
                    Image(foodimagenames[1])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 70)
                        .cornerRadius(10)
                        .clipped()
                        .onTapGesture {
                            imageClicked(number: 1)
                            showAlert=true
                        }
                    Image(foodimagenames[2])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 70)
                        .cornerRadius(10)
                        .clipped()
                        .onTapGesture {
                            imageClicked(number: 2)
                            showAlert=true
                        }
                        
                }.alert(scoreTitle, isPresented: $showAlert){
                    Button("Ok",role:.cancel){
                        foodimagenames.shuffle()
                        correctAnswer = Int.random(in: 0...2)
                    }
                    Button("Отмена",role: .destructive){}
                }
                
                Text("Общий счет \(totalScore)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                Spacer()
            }
            
           
           
            
        }
        }
    func imageClicked(number:Int){
        if number == correctAnswer {
            scoreTitle = "Правилный ответ !"
            totalScore += 1
            
        }else{
            scoreTitle = "Неправильно ! Это \(foodimagenames[number])"
            if totalScore>0{
                totalScore -= 1
            }
            
        }
    }
}


//            Image("somsa")
//                .resizable()
//                .scaledToFill()
//                .frame(maxWidth: .infinity,maxHeight:.infinity)
//                .edgesIgnoringSafeArea(.all)

struct customButton:View{
    
    var name:String
    var clicable:()->Void
    
    var body: some View{
        Button(name){
            clicable()
        }
    }
}

func mylambda2()->Void{
    
}



struct Lesson18Preview:PreviewProvider{
    static var previews: some View{
        Lesson18()
    }
}
