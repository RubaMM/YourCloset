//
//  descriptionPage.swift
//  YourCloset
//
//  Created by leena alajlani on 15/02/2023.
//

import SwiftUI

struct descriptionPage: View {
    @State private var discription: String = ""
    var body: some View {
        ZStack{
            Color.init("MainColor").ignoresSafeArea()
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(width: 330,height:128)
                .padding([.top, .leading, .trailing],80)
                .overlay(TextField("Add Discription", text: $discription)
                    .font(.custom("Bodoni 72", size: 20))
                    .offset(x:180,y:40)
                )
            
            
            Button("Delete") { }
                
                
                .frame(width:324,height: 56 )
                .background(Color.init("button1"))
                    .font(.custom("Bodoni 72", size: 20))
                    .cornerRadius(10)
                    .foregroundColor(.red)
                    .padding(.top,400)
            
            Button("Save") { }
                

                .frame(width:324,height: 56 )
                .background(Color.white)
                    .font(.custom("Bodoni 72", size: 20))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .padding(.top,550)
                 
            
            
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(36)
                    .frame(width: 427,height:345)
               
                    .padding([.leading, .bottom, .trailing], 600.0)
            }
        }
       
    }
}

struct descriptionPage_Previews: PreviewProvider {
    static var previews: some View {
        descriptionPage()
    }
}
