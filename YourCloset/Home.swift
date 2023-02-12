//
//  Home.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 16/07/1444 AH.
//

import SwiftUI

struct Home: View {
    var body: some View {

        
        ZStack{
            
            Color("MainColor").ignoresSafeArea()
            
            VStack(spacing:50){
                
                Text("URCLOSET")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                   
                
                    Divider()
                    
                 
                    ZStack{
                        
                        Rectangle()
                        .fill(.white)
                        .frame(width: 350, height: 160)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.bottom,30)
                        .padding()
                    // .position(x: 196 , y:0)HStack(spacing:150){
                            
                        HStack(spacing:130){
                                
                            Text("Tips")
                                .font(.title2)
                                .fontWeight(.semibold)
                            //  .padding()
                            //   .padding(.top,-15)
                                .foregroundColor(.black)
                            
                            Image("Tip")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height:60 )
                        }.padding(.bottom,50)
                            
                        }
                        
                ZStack{
                    Rectangle()
                        .fill(.white)
                        .frame(width: 350, height: 160)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.bottom,220)
                    
                    HStack(spacing:130){
                        
                        
                        Text("Closet")
                            .font(.title2)
                            .fontWeight(.semibold)
                        //  .padding()
                        //   .padding(.top,-15)
                            .foregroundColor(.black)
                        
                        Image("closet")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height:60 )
                    }.padding(.bottom,200)
                        
                    }
                    
                }
                }
            }
        }
       
    


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
