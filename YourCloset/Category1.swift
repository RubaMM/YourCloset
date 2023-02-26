//
//  Category1.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 03/08/1444 AH.
//

import SwiftUI

struct Category1: View {
    @State var CopyOinfo : [Oinfo] = [Oinfo.ex1,Oinfo.ex2,Oinfo.ex3,Oinfo.ex4,Oinfo.ex5,Oinfo.ex6,Oinfo.ex7,Oinfo.ex8,Oinfo.ex9,Oinfo.ex10,Oinfo.ex11,Oinfo.ex12,Oinfo.ex13,Oinfo.ex14,Oinfo.ex15,Oinfo.ex16]

    var body: some View {
      
            ZStack{
                
                Color("MainColor").ignoresSafeArea()
                
                VStack(spacing:30){
                    
                    Text("Category")
                        .font(.custom("Bodoni 72", size: 36))
                        .foregroundColor(.black)
                    // .padding(.bottom,80)
                    
                    Divider()
                    
                    ScrollView{
                        
                        VStack(){
                            //First to cat
                            HStack{
                                NavigationLink(destination: T_Shirt()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex1.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex1.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                        
                                    }
                                }
                                NavigationLink(destination: Tops()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex2.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex2.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                        
                                    }
                                }
                            }
                            //end first
                            
                            //Secned to cat
                            HStack{
                                NavigationLink(destination: Sweats()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex3.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex3.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                                NavigationLink(destination: Jackets()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex4.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex4.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                            }
                            //end second
                            
                            //Third two cat
                            HStack{
                                NavigationLink(destination: Dresses()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex5.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex5.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                                NavigationLink(destination: Skirts()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex6.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex6.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                            }
                            // end third
                            
                            // fourth two cat
                            
                            HStack{
                                NavigationLink(destination: Jeans()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex7.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex7.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                                
                                NavigationLink(destination: Pants()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex8.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex8.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                            }
                            //end fourth
                            
                            // 5 two cat
                            HStack{
                                NavigationLink(destination: Shorts()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex9.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex9.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                                
                                NavigationLink(destination: Activewear()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex10.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex10.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                            }
                            //end 5
                            
                            // 6 two cat
                            HStack{
                                NavigationLink(destination: Swimwear()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex11.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex11.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                                
                                NavigationLink(destination: Sleepwear()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex12.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex12.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                        
                                    }
                                }
                            }
                            // end 6
                            
                            // 7 two cat
                            HStack{
                                NavigationLink(destination: Underwear()) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex13.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex13.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                                
                                NavigationLink(destination: Loungwear()) {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex14.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex14.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                            }
                            //end 7
                            
                           // 8 two cat
                            HStack{
                                NavigationLink(destination: Bags()) {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex15.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex15.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                                
                                NavigationLink(destination: Shoes()) {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 160,height:180)
                                            .cornerRadius(15)
                                            .foregroundColor(.white)
                                            .padding(.trailing,5)
                                        
                                        Image("\(Oinfo.ex16.img)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height:100 )
                                            .padding(.bottom,40)
                                        
                                        
                                        Text("\(Oinfo.ex16.Name)")
                                            .font(.custom("Bodoni 72", size: 28))
                                        // .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.top,100)
                                    }
                                    
                                }
                            }
                            
                        } .padding(.horizontal)
                        
                        
                        
                    }
                    
                }
                
            
        }
        }
        }
        
    
struct Category1_Previews: PreviewProvider {
    static var previews: some View {
        Category1()
    }
}

struct Oinfo1:Identifiable{
    
    var id: String
    var Name : String
    var img : String
    
    static let ex1 : Oinfo1 =  Oinfo1(id:"1",Name:"T-Shirts" ,img: "T-ShirtsP")
    static let ex2 : Oinfo1 =  Oinfo1(id:"2",Name:"Tops" ,img: "TopsP")
    static let ex3 : Oinfo1 =  Oinfo1(id:"3",Name:"Sweats" ,img: "SweatsP")
    static let ex4 : Oinfo1 =  Oinfo1(id:"4",Name:"Jackets" ,img: "JacketsP")
    static let ex5 : Oinfo1 =  Oinfo1(id:"5",Name:"Dresses" ,img: "DressesP")
    static let ex6 : Oinfo1 =  Oinfo1(id:"6",Name:"Skirts" ,img: "SkirtsP")
    static let ex7 : Oinfo1 =  Oinfo1(id:"7",Name:"Jeans" ,img: "JeansP")
    static let ex8 : Oinfo1 =  Oinfo1(id:"8",Name:"Pants" ,img: "PantsP")
    static let ex9 : Oinfo1 =  Oinfo1(id:"9",Name:"Shorts" ,img: "ShortsP")
    static let ex10 : Oinfo1 =  Oinfo1(id:"10",Name:"Activewear" ,img: "ActivewearP")
    static let ex11 : Oinfo1 =  Oinfo1(id:"11",Name:"Swimwear" ,img: "SwimwearP")
    static let ex12 : Oinfo1 =  Oinfo1(id:"12",Name:"Sleepwear" ,img: "SleepwearP")
    static let ex13 : Oinfo1 =  Oinfo1(id:"13",Name:"Underwear" ,img: "UnderwearP")
    static let ex14 : Oinfo1 =  Oinfo1(id:"14",Name:"Loungwear" ,img: "LoungwearP")
    static let ex15 : Oinfo1 =  Oinfo1(id:"15",Name:"Bags" ,img: "BagsP")
    static let ex16 : Oinfo1 =  Oinfo1(id:"16",Name:"Shoes" ,img: "ShoesP")
    
    
    
}
