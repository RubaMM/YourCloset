
//  PAGE2.swift
//  procedure
//
//  Created by alanoud alawwad on 29/07/1444 AH.
//

import SwiftUI
//struct CKECKMARK : Hashable{
//    @State var ckeck = false
//
//}
struct PAGE2: View {
    @State var ckeck1 = false
    @State var ckeck2 = false
    @State var ckeck3 = false
    @State var ckeck4 = false
    @State var ckeck5 = false
   
    var body: some View {
      
            //var ckeck = 0
            ZStack{
                Color("A")
                    .ignoresSafeArea()
                VStack{
                    
                    Text("Procedures")
                        .font(.custom("SF Compact", size: 36))
                        .foregroundColor(.black)
                    
                ScrollView(.vertical){
                    //STEP1
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 150)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        HStack{
                            Text("1")
                                .font(.system(size: 50))
                                .padding()
                                .foregroundColor(Color.black)
                                .padding(.leading , 10)
                                .padding(.bottom ,60)
                            
                            VStack{
                                Text("Take the clothes out of your closet,put them to the side.")
                                    .font(.custom("SF Compact", size: 21))
                                    .foregroundColor(Color("c"))
                                    .padding(.trailing,-3)
                                    .padding(.bottom,20)
                                
                                //                            .padding(.bottom,-20)
                            }
                            
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.black)
                            .padding(.bottom , 10)
                            Button {
                                ckeck1.toggle()
                            } label: {
                                if( ckeck1 == false){
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 40))
                                    
                                }else{
                                    
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 40))
                                    
                                }
                                
                            }
                            .padding(.top,80)
                            .padding()
                        }
                    }
                    
                    // step 2
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 160)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        HStack{
                            Text("2")
                                .font(.system(size: 50))
                                .padding()
                                .foregroundColor(Color.black)
                                .padding(.leading , 10)
                                .padding(.bottom ,60)
                            
                            VStack{
                                Text("Choose which clothes you want to keep and which you will donate. ")
                                    .font(.custom("SF Compact", size: 21))
                                    .foregroundColor(Color("c"))

                                    .padding(.bottom,3)
                                
                                Text("Hint : Donate clothes you no longer wear or clothes that no longer fit. ")
                                    .font(.custom("SF Compact", size: 12))
                                    .foregroundColor(Color.black)
                                    .padding(.trailing )
                                //                            .padding(.bottom,-20)
                            }
                            
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.black)
                            .padding(.bottom , 10)
                            Button {
                                ckeck2.toggle()
                            } label: {
                                if( ckeck2 == false){
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 40))
                                    
                                }else{
                                    
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 40))
                                    
                                }
                                
                            }
                            .padding(.top,80)
                            .padding(.trailing )
                        }
                    }
                    
                    
                    //STEP 3
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 160)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        HStack{
                            Text("3")
                                .font(.system(size: 50))
                                .padding()
                                .foregroundColor(Color.black)
                                .padding(.leading,3 )
                                .padding(.bottom ,60)
                            VStack{
                                Text("Now clean your closet before returning the clothes.")
                                    .font(.custom("SF Compact", size: 21))
                                    .foregroundColor(Color("c"))
                                    .padding(.bottom,3)
                                
                                
                                Text("Hint :cleaning and ventilation of clothes ,so that dust does not accumulate on clothes.")
                                    .font(.custom("SF Compact", size: 12))
                                    .foregroundColor(Color.black)
                                //                            .padding(.trailing )
                                    .padding(.bottom,3)
                                
                            }
                            
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.black)
                            .padding(.bottom , 10)
                            Button {
                                ckeck3.toggle()
                            } label: {
                                if( ckeck3 == false){
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 40))
                                }else{
                                    
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(Color.green)
                                    
                                        .font(.system(size: 40))
                                }
                            }
                            .padding(.top,80)
                            .padding()
                            
                            
                        }
                    }
                    //STEP4
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 400)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        HStack{
                            Text("4")
                                .font(.system(size: 50))
                                .padding()
                                .foregroundColor(Color.black)
                                .padding(.leading,8)
                                .padding(.bottom ,300)
                            VStack{
                                Text("Classification of clothes: ")
                                    .font(.custom("SF Compact", size: 21))
                                    .foregroundColor(Color("c"))
                                    .padding(.top,-45)
                                    .padding(.bottom,10)
                                    .padding(.leading,-1)
                                Text(" • Occasion clothes are clothes that you don't wear constantly,such as holiday clothes. ")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.bottom,8)
                                
                                
                                Text(" • Work clothes are comfortable clothes that you wear every day. ")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.bottom,8)
                                
                                
                                Text(" • Daily clothes the clothes you wear at home, such as pyjamas, light clothes, and underwear.")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.bottom,8)
                                
                                Text(" • The clothes you want to store, such as winter clothes in summer and vice versa.")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.bottom,8)
                            }
                            
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.black)
                            
                            
                            Button {
                                ckeck4.toggle()
                            } label: {
                                if( ckeck4 == false){
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 40))
                                }else{
                                    
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 40))
                                    
                                }
                            }
                            
                            
                            .padding(.top,330)
                            .padding()
                            
                            
                            
                            
                        }
                    }
                    //STEP 5
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 450)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        HStack{
                            Text("5")
                                .font(.system(size: 50))
                                .padding()
                                .foregroundColor(Color.black)
                                .padding(.leading,8)
                                .padding(.bottom ,350)
                            
                            VStack{
                                Text("After dividing the clothes, we will arrange the pieces and count them:")
                                    .font(.custom("SF Compact", size: 21))
                                    .padding(.bottom)
                                    .foregroundColor(Color("c"))
                                    .padding(.top,-28)
                                
                                Text(" • Put the Occasion clothes behind your work and daily clothes.")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(-8)
                                    .padding(.bottom)
                                Text(" • Work clothes keep them close to you as they are accessed every morning. ")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(-8)
                                    .padding(.bottom)
                                
                                Text(" • Daily clothes arranged in boxes or drawers")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(-8)
                                    .padding(.bottom)
                                
                                Text(" • Clothes that you want to save put boxes on top of the closet.")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(-8)
                                    .padding(.bottom)
                                
                                Text("Hint:Separate the upper clothes from the lower clothes, and hang clothes such as dresses, tops, pants, and skirts. Arrange clothes according to length, colour, and condition. ")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.black)
                                    .padding(8)
                                    .padding(.bottom)
                            }
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.black)
                            Button {
                                ckeck5.toggle()
                            } label: {
                                if( ckeck5 == false){
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 40))
                                }else{
                                    NavigationLink(destination: PAGE3()) {
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(Color.green)
                                        
                                        .font(.system(size: 40)) }
                                }
                                
                            }
                            .padding(.top,380)
                            .padding()
                        }
                        
                    }
                    }
                    
                }
                
            }
    }
}
struct PAGE2_Previews: PreviewProvider {
    static var previews: some View {
        PAGE2()
    }
}
