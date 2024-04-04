//
//  VHZStacks.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 20/02/24.
//

import Foundation
import SwiftUI

 struct lesson1:View{
    var body:some View{
        NavigationStack{
            VStack(alignment:.leading){
                Text("pr 2077")
                Text("Aminov Pr 2077")
            }
            //.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,alignment:.top)
            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment:.topLeading)
            .navigationTitle("Lesson 1")
        }
       
    }
}
private struct lesson1_2:View{
    var body:some View{
        NavigationStack{
            VStack(alignment:.leading){
                HStack{
                    Text("pr 2077")
                    Text("Aminov Pr 2077")
                    Spacer()
                }.frame(maxWidth: .infinity)
               
                Spacer()
            }
            //.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,alignment:.top)
            //.frame(maxWidth: .infinity, maxHeight: .infinity,alignment:.topLeading)
            .navigationTitle("Lesson 1")
        }
       
    }
}

private struct lesson1_3:View{
    var body:some View{
        NavigationStack{
            VStack(spacing: 10){
                Text("Pr2077").padding(.trailing,50)
                //Spacer()
                Text("Pr2077").padding(.leading,100)

            }
            .navigationTitle("Lesson 1")
        }
       
    }
}


private struct lesson1_4:View{
    var body:some View{
        NavigationStack{
            VStack(spacing: 10){
                Text("Pr2077").padding(.trailing,50)
                //Spacer()
                Text("Pr2077").padding(.leading,100)

            }
            .navigationTitle("Lesson 1")
        }
       
    }
}

private struct lesson1_5:View{
    var body:some View{
        
        VStack(spacing:10){
            HStack{
                Image("somsa")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width/3,height: 150)
                    .clipped()
                Image("moshxorda")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width/3,height: 150)
                    .clipped()
                Image("sholgomshorva")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width/3,height: 150)
                    .clipped()
            }
            VStack{
                Image("polov")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width,height: 200)
                    .clipped()
                Image("shashlik")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width,height: 200)
                    .clipped()
            }
        }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
       
    }
}

private struct lesson1_6:View{
    var body:some View{
        NavigationStack{
            VStack(spacing: 10){
               
                ScrollView(.horizontal){
                    HStack{
                        Image("polov")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150,height: 200)
                            .cornerRadius(20)
                            .clipped()
                        Image("shashlik")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150,height: 200)
                            .cornerRadius(20)
                            .clipped()
                        Image("somsa")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150,height: 200)
                            .cornerRadius(20)
                            .clipped()
                    }
                }.padding(.horizontal)
                
                Text("Popular eats")
                ScrollView(.vertical){
                    VStack{
                        Image("polov")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width-20,height: 200)
                            .cornerRadius(20)
                            .clipped()
                        Image("shashlik")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width-20,height: 200)
                            .cornerRadius(20)
                            .clipped()
                        Image("somsa")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width-20,height: 200)
                            .cornerRadius(20)
                            .clipped()
                    }
                }.padding()
               // Spacer()
            }
            .navigationTitle("Yemasang yut")
        }
       
    }
}


private struct lesson1_7:View{
    var body:some View{
        NavigationStack{
            VStack{
                Image("shashlik")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width-20,height: 200)
                    .cornerRadius(15)
                    .clipped()
                    .overlay(alignment:.topLeading){
                        Text("25.000")
                            .padding(.horizontal,10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .font(.title3)
                            .cornerRadius(25)
                            .padding()
                            
                    }
                    .overlay(alignment:.bottomTrailing){
                        Text("it go`shtidan qiyma kaboblar")
                            .padding(.horizontal,10)
                            .foregroundColor(.white)
                            .background(.green)
                            .font(.title2)
                            .cornerRadius(25)
                            .padding()
                            
                    }
                Image("polov")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width-20,height: 200)
                    .cornerRadius(15)
                    .clipped()
                    .overlay(alignment:.topLeading){
                        Text("35.000")
                            .padding(.horizontal,10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .font(.title3)
                            .cornerRadius(25)
                            .padding()
                            
                    }
                    .overlay(alignment:.bottomTrailing){
                        Text("qo'y go`shtidan polov")
                            .padding(.horizontal,10)
                            .foregroundColor(.white)
                            .background(.green)
                            .font(.title2)
                            .cornerRadius(25)
                            .padding()
                            
                    }
                
                ScrollView(.horizontal){
                    HStack{
                        Image("polov")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150,height: 200)
                            .cornerRadius(20)
                            .clipped()
                        Image("shashlik")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150,height: 200)
                            .cornerRadius(20)
                            .clipped()
                        Image("somsa")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150,height: 200)
                            .cornerRadius(20)
                            .clipped()
                    }
                }.padding(.horizontal)
                
            }.frame(maxWidth: .infinity,maxHeight:.infinity,alignment:.top)
            .navigationTitle("Mening yeb ichganlarim")
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
    
}

struct lesson1_preview:PreviewProvider{
    static var previews: some View{
        lesson1_7()
    }
}
