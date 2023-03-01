//
//  Tops.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 28/07/1444 AH.
//

import SwiftUI

struct Tops: View {
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
                    if FileManager().docExist1(named: fileName) {
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
                .navigationTitle("Tops")
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

struct Tops_Previews: PreviewProvider {
    static var previews: some View {
        Tops()
            .environmentObject(ViewModel1())
    }
}
struct MyShe : View {
    @State private var discription: String = ""
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.init("MainColor").ignoresSafeArea()
                
                VStack {
                    if let image = vm.image {
              
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(minWidth: 0, maxWidth: .infinity)
                        
                    } else {
                        Image(systemName: "photo.fill")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.6)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.horizontal)
                    }
                    VStack {
                        TextField("Image Name", text: $vm.imageName) { isEditing in
                            vm.isEditing = isEditing
                        }
                        .textFieldStyle(.roundedBorder)
                        HStack {
                            Button {
                                if vm.selectedImage == nil {
                                    vm.addMyImage(vm.imageName, image: vm.image!)
                                }
                            } label: {
                                ButtonLabel(symbolName: vm.selectedImage == nil ? "square.and.arrow.down.fill" : "square.and.arrow.up.fill",
                                            label: vm.selectedImage == nil ? "Save" : "Update")
                            }
                            .disabled(vm.buttonDisabled)
                            .opacity(vm.buttonDisabled ? 0.6 : 1)
                            if !vm.deleteButtonIsHidden {
                                Button {
                                    
                                } label: {
                                    ButtonLabel(symbolName: "trash", label: "Delete")
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
    
}
