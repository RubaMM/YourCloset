//
//  Home.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 16/07/1444 AH.
//

import SwiftUI

struct Home: View {
    var body: some View {

        NavigationView(){
            ZStack{
                
                Color("MainColor").ignoresSafeArea()
                
                VStack(spacing:25){
                    
                    Text("URCLOSET")
                        .font(.custom("SF Compact", size: 36))
                        .foregroundColor(.black)
                    
                    
                    Divider()
                    
                    NavigationLink(destination: PAGE1_()) {
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
                                
                                Text("Procedure")
                                    .font(.custom("SF Compact", size: 25))
                                    .fontWeight(.semibold)
                                //  .padding()
                                //   .padding(.top,-15)
                                    .foregroundColor(.black)
                                
                                Image("procedure")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height:60 )
                                    .padding(.trailing,30)
                            }.padding(.bottom,50)
                            
                        } }
                    
                    
                    NavigationLink(destination: Category1()) {
                        
                        ZStack{
                            Rectangle()
                                .fill(.white)
                                .frame(width: 350, height: 160)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .padding(.bottom,220)
                            
                            HStack(spacing:130){
                                
                                
                                Text("Closet")
                                    .font(.custom("SF Compact", size: 25))
                                    .fontWeight(.semibold)
                                //   .padding(.top,-15)
                                    .foregroundColor(.black)
                                    .padding(.bottom)
                                
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
            }
        }
       
    


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
