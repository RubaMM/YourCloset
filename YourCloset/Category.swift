//
//  Category.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 21/07/1444 AH.
//

import SwiftUI
// second commit
struct Category: View {
    
    
    @State var Category1 :[String] = ["T-Shirts","Tops","Sweats", "Jackets","Dresses", "Skirts","Jeans","Pants","Shorts","Activewear",
    "Swimwear","Sleepwear","Underwear","Loungwear","Bags","Shoes"]
    
    @State var Category2 = ["T-ShirtsP","TopsP","SweatsP", "JacketsP","DressesP", "SkirtsP","JeansP","PantsP","ShortsP","ActivewearP",
    "SwimwearP","SleepwearP","UnderwearP","LoungwearP","BagsP","ShoesP"]
   // @State var Categoru2 = ["Bags ", "Dresses","Skirts","Sleepwear"]
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
                            
                            
                        ForEach(Category1, id:\.self){ Category in
                      
               ZStack{
                            Rectangle()
                            .frame(width: 170,height:190)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                            .padding(.trailing,5)
                                                
                        Text("\(Category)")
                        .font(.title2)
                        .fontWeight(.semibold)
                
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
