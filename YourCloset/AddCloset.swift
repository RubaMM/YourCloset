//
//  AddCloset.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 29/07/1444 AH.
//

import SwiftUI

struct AddCloset: View {
    var body: some View {
        ZStack{
            
            Color("MainColor").ignoresSafeArea()
            
            VStack(spacing:50){
                
                Text("URCLOSET")
                    .font(.custom("Bodoni 72", size: 35))
                    .foregroundColor(.black)
                   
                
                    Divider()
             
                ScrollView{
                    Text("CLOSET")
                        .font(.custom("Bodoni 72", size: 28))
                        .foregroundColor(.black)
                        .padding(.trailing,200)
                    
                    
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
                            
                            Text("Add Closet")
                                .font(.title2)
                                .fontWeight(.semibold)
                            //  .padding()
                            //   .padding(.top,-15)
                                .foregroundColor(.gray)
                            
                        }.padding(.bottom,50)
                        
                    }
                    
                }
                }
                }
    }
}

struct AddCloset_Previews: PreviewProvider {
    static var previews: some View {
        AddCloset()
    }
}
