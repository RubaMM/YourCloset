//
//  PAGE1 .swift
//  procedure
//
//  Created by alanoud alawwad on 27/07/1444 AH.
//

import SwiftUI

struct PAGE1_: View {
    var body: some View {

            ZStack{
                Color("A")
                    .ignoresSafeArea()
                VStack{
                    
                    Text("Procedures")
                      .font(.custom("SF Compact", size: 36))
                        .foregroundColor(.black)
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 500)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        GifImage("22")
                            .cornerRadius(10)
                            .frame(width:300, height:259)
                            .padding(.top)
                        
                 
                            Text("Overcome clutter with five procedures that may help you organise your closet.")
                                .font(.custom("SF Compact", size: 20))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                                .padding(.top,250)
                                .padding(.leading)
                            .padding(.trailing)
                        
                    }
                    .padding()
                    ZStack{
                        
                        
                        Button {
                            
                        } label: {
                            
                            NavigationLink(destination: PAGE2()) {
                                ZStack{
                                    
                                    
                                    Rectangle()
                                        .frame(width: 340, height: 60)
                                        .cornerRadius(10)
                                        .foregroundColor(Color("B"))
                                    Text("Start")
                                    //  .padding(10)
                                        .font(.custom("SF Compact", size: 20))
                                    //  .padding()
                                        .foregroundColor(Color.black)
                                    
                                } }
                            
                        }
                        .contentShape(Rectangle())
                        
                        
                    }
                }
            }
            
 
       
    }
}

struct PAGE1__Previews: PreviewProvider {
    static var previews: some View {
        PAGE1_()
    }
}
