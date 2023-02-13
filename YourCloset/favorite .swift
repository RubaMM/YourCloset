//
//  favorite .swift
//  YourCloset
//
//  Created by leena alajlani on 12/02/2023.
//

import SwiftUI

struct favorite_: View {
    var body: some View {
        ZStack{
            Color.init("MainColor").ignoresSafeArea()
            ZStack{
                Text("Favorites").font(.custom("Bodoni 72", size: 36))
                    
                    
                    .padding(.top, -420.0)
                
                Divider()
                    .padding(.top, -375.0)
                
                
            }
        }
    }
}

struct favorite__Previews: PreviewProvider {
    static var previews: some View {
        favorite_()
    }
}
