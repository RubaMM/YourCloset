//
//  Shorts.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 28/07/1444 AH.
//

import SwiftUI

struct Shorts: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .top){
                
                Color("MainColor").ignoresSafeArea()
                
   Divider()
                
                HStack{
                    ZStack{
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

                        
                    }
                    Spacer()
                }.padding()
                
        .sheet(isPresented: $vm.showPicker) {
                        ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                            .ignoresSafeArea()
                        //end
                        
                    }.padding(.trailing,180)
                
                    .alert("Error", isPresented: $vm.showCameraAlert, presenting: vm.cameraError, actions: { cameraError in
                        cameraError.button
                    }, message: { cameraError in
                        Text(cameraError.message)
                    })
                    
             
                    }
            .navigationTitle("Shorts")
          
      
            
            
        }
    }
}

struct Shorts_Previews: PreviewProvider {
    static var previews: some View {
        Shorts()
            .environmentObject(ViewModel())
    }
}
