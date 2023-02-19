//
//  addCommenet.swift
//  YourCloset
//
//  Created by leena alajlani on 15/02/2023.
//

import SwiftUI

struct addCommenet: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        
        
        ZStack{
            
            Color("MainColor").ignoresSafeArea()
            
            
            Button("Toggle Sheet"){
                showSheet.toggle()
                
            }
            .sheet(isPresented: $showSheet){
                //   Text("HI")
                
                Rectangle()
                    .fill(.gray)
                    .frame(width: 220,height:220)
                    .cornerRadius(10)
                
                
                    .padding(20)
                
                
                Rectangle()
                    .fill(.gray)
                    .frame(width: 340,height:200)
                    .cornerRadius(10)
                
                
                
                
                    .presentationDetents([.large,.large,.fraction(0.75)])
                
                
            }
        }
    }
}
struct addCommenet_Previews: PreviewProvider {
    static var previews: some View {
        addCommenet()
    }
}
