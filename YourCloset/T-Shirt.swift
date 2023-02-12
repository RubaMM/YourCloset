//
//  T-Shirt.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 21/07/1444 AH.
//

import SwiftUI

struct T_Shirt: View {
    var body: some View {
        
        ZStack{
            
            Color("MainColor").ignoresSafeArea()
            
            VStack(spacing:50){
                
                Text("T-Shirts")
                    .font(.largeTitle)
                    .foregroundColor(.black)
              
                    Divider()
                 
                    ZStack{
                        
                        Rectangle()
                            .fill(.white)
                            .frame(width: 170,height:190)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                           
                        // .position(x: 196 , y:0)HStack(spacing:150){
                        
                            
                            Text("Tips")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
    
                    
                
                        }.padding(.bottom,500)
                    .padding(.trailing,180)
                
                        
                    
                }
                }
                }
            }
    


struct T_Shirt_Previews: PreviewProvider {
    static var previews: some View {
        T_Shirt()
    }
}
