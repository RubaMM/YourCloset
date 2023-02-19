//
//  favorite .swift
//  YourCloset
//
//  Created by leena alajlani on 12/02/2023.
//

import SwiftUI

struct favorite_: View {
    @State private var isPressed = false

    var body: some View {
        ZStack{
            Color.init("MainColor").ignoresSafeArea()
            ZStack{
                Text("Favorites").font(.custom("Bodoni 72", size: 36))
                    .padding(.top, -420.0)
                
               
                
              
                

                Button(action: {
                    // Do something...
                }, label: {
                    Image(!isPressed ? "heart" : "heart.fill")               })
                .buttonStyle(.plain)
                .pressAction {
                    isPressed = true
                } onRelease: {
                    isPressed = true               }
                .frame(width: 100, height: 100)
                .padding(.top, -450)
                .padding(.leading,260.0)
                
                                   Divider()
                    .padding(.top, -375.0)
                
              //  Image(systemName: "heart.fill")
               
                
            }
        }
    }
}

struct favorite__Previews: PreviewProvider {
    static var previews: some View {
        favorite_()
    }
}
struct PressActions: ViewModifier {
    var onPress: () -> Void
    var onRelease: () -> Void
    
    func body(content: Content) -> some View {
        content
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged({ _ in
                        onPress()
                    })
                    .onEnded({ _ in
                        onRelease()
                    })
            )
    }
}
 
 
extension View {
    func pressAction(onPress: @escaping (() -> Void), onRelease: @escaping (() -> Void)) -> some View {
        modifier(PressActions(onPress: {
            onPress()
        }, onRelease: {
            onRelease()
        }))
    }
}
