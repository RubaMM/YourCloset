//
//  T-Shirt.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 21/07/1444 AH.
//

import SwiftUI

struct T_Shirt: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .top){
                
                Color("MainColor").ignoresSafeArea()
                
   Divider()
                
                
                    Rectangle()
                        .fill(.white)
                        .frame(width: 170,height:190)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    

                   
                        HStack {
                            Button {
                                vm.source = .camera
                                vm.showPhotoPicker()
                            } label: {
                                //
                                Image("Camera")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 70, height:70 )
                            }
                            Button {
                                vm.source = .library
                                vm.showPhotoPicker()
                            } label: {
                                Text("Photos")
                                    .foregroundColor(.black)
                                    .font(.custom("Bodoni 72", size: 28))
                            }
                        }
                        Spacer()

                    .sheet(isPresented: $vm.showPicker) {
                        ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                            .ignoresSafeArea()
                        //end
                        
                    }.padding(.bottom,500)
                        .padding(.trailing,180)
                    
                    }
            .navigationTitle("T-shirt")
            
            
        }
    }
}



struct T_Shirt_Previews: PreviewProvider {
    static var previews: some View {
        T_Shirt()
            .environmentObject(ViewModel())
    }
}
