//
//  Underwear.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 28/07/1444 AH.
//

import SwiftUI

struct Underwear: View {
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
                .navigationTitle("Underwear")
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
            .onAppear{
                vm.catg = "Underwear"
            }
        }
    }
}


struct Underwear_Previews: PreviewProvider {
    static var previews: some View {
        Underwear()
            .environmentObject(ViewModel())
    }
}
