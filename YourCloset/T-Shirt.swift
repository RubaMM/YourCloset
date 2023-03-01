//
//  T-Shirt.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 21/07/1444 AH.
//

import SwiftUI

struct T_Shirt: View {
    @EnvironmentObject var vm: ViewModel
    @FocusState var nameField:Bool
    var body: some View {
        NavigationView {
            
            ZStack{
                Color("MainColor").ignoresSafeArea()
                
                
                VStack {
                    
                    if !vm.isEditing {
                        imageScroll
                    }
                    selectedImage
                    VStack {
                        if vm.image != nil {
                            editGroup
                        }
                        if !vm.isEditing {
                            pickerButtons
                        }
                    }
                    .padding()
                    Spacer()
                }
                .task {
                    if FileManager().docExist(named: fileName) {
                        vm.loadMyImagesJSONFile()
                    }
                }
                .sheet(isPresented: $vm.showPicker) {
                    ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                        .ignoresSafeArea()
                }
                .alert("Error", isPresented: $vm.showFileAlert, presenting: vm.appError, actions: { cameraError in
                    cameraError.button
                }, message: { cameraError in
                    Text(cameraError.message)
                })
                .navigationTitle("T-Shirt")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        HStack {
                            Spacer()
                            Button {
                                nameField = false
                            } label : {
                                Image(systemName: "keyboard.chevron.compact.down")
                            }
                        }
                    }
                }}
        }
    }
}

struct T_Shirt_Previews: PreviewProvider {
    static var previews: some View {
        T_Shirt()
            .environmentObject(ViewModel())
    }
}
