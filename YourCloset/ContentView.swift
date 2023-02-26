//
//  ContentView.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 15/07/1444 AH.
//

//
//  ContentView.swift
//  My Images
//
//  Created by Stewart Lynch on 2021-08-08.
//

import SwiftUI

struct ContentView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
      Home()
            
        }
        else {
            ZStack {

                Color("MainColor").ignoresSafeArea()
                Image("Logo")
                .resizable()
                .frame(width: 250, height: 200)
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 2.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {

                        self.isActive = true
                    }
                }
            }
            
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
