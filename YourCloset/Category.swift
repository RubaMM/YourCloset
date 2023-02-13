//
//  Category.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 21/07/1444 AH.
//

import SwiftUI
// second commit
struct Category: View {
    
    @State var CopyOinfo : [Oinfo] = [Oinfo.ex1,Oinfo.ex2,Oinfo.ex3,Oinfo.ex4,Oinfo.ex5,Oinfo.ex6,Oinfo.ex7,Oinfo.ex8,Oinfo.ex9,Oinfo.ex10,Oinfo.ex11,Oinfo.ex12,Oinfo.ex13,Oinfo.ex14,Oinfo.ex15,Oinfo.ex16]

    let columns = [
           GridItem(.adaptive(minimum: 180))
       ]
    var body: some View {
        
        ZStack{
            
            Color("MainColor").ignoresSafeArea()
            
            VStack(spacing:50){
                
                Text("Category")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                   // .padding(.bottom,80)
                
                Divider()
               
                ScrollView{
                    
                    VStack(){
                        //lazyvgrid
                        LazyVGrid(columns: columns, spacing: 25) {
                            
                            
                        ForEach(CopyOinfo){ Category in
                      
               ZStack{
                            Rectangle()
                            .frame(width: 170,height:190)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                            .padding(.trailing,5)
                   
                   Image("\(Category.img)")
                       .resizable()
                       .scaledToFill()
                       .frame(width: 100, height:100 )
                       .padding(.bottom,40)
                   
                   
                   Text("\(Category.Name)")
                       .font(.title2)
                       .fontWeight(.semibold)
                       .foregroundColor(.black)
                       .padding(.top,100)
                
                                        }
                        }
                        } .padding(.horizontal)
                        
                       
                        
                    }
                    
                }
                
            }
        }
        
    }
       
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}

struct Oinfo:Identifiable{
    
    var id: String
    var Name : String
    var img : String
    
    static let ex1 : Oinfo =  Oinfo(id:"1",Name:"T-Shirts" ,img: "T-ShirtsP")
    static let ex2 : Oinfo =  Oinfo(id:"2",Name:"Tops" ,img: "TopsP")
    static let ex3 : Oinfo =  Oinfo(id:"3",Name:"Sweats" ,img: "SweatsP")
    static let ex4 : Oinfo =  Oinfo(id:"4",Name:"Jackets" ,img: "JacketsP")
    static let ex5 : Oinfo =  Oinfo(id:"5",Name:"Dresses" ,img: "DressesP")
    static let ex6 : Oinfo =  Oinfo(id:"6",Name:"Skirts" ,img: "SkirtsP")
    static let ex7 : Oinfo =  Oinfo(id:"7",Name:"Jeans" ,img: "JeansP")
    static let ex8 : Oinfo =  Oinfo(id:"8",Name:"Pants" ,img: "PantsP")
    static let ex9 : Oinfo =  Oinfo(id:"9",Name:"Shorts" ,img: "ShortsP")
    static let ex10 : Oinfo =  Oinfo(id:"10",Name:"Activewear" ,img: "ActivewearP")
    static let ex11 : Oinfo =  Oinfo(id:"11",Name:"Swimwear" ,img: "SwimwearP")
    static let ex12 : Oinfo =  Oinfo(id:"12",Name:"Sleepwear" ,img: "SleepwearP")
    static let ex13 : Oinfo =  Oinfo(id:"13",Name:"Underwear" ,img: "UnderwearP")
    static let ex14 : Oinfo =  Oinfo(id:"14",Name:"Loungwear" ,img: "LoungwearP")
    static let ex15 : Oinfo =  Oinfo(id:"15",Name:"Bags" ,img: "BagsP")
    static let ex16 : Oinfo =  Oinfo(id:"16",Name:"Shoes" ,img: "ShoesP")
    
    
    
}
