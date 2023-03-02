//
//  Tops+Extension.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 03/08/1444 AH.
//
import Foundation
import SwiftUI

extension Tops {
    var imageScroll: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(vm.myImages.filter({ closet in
                    closet.category == "Tops"
                })) { myImage in
                    VStack {
                        Image(uiImage: myImage.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 170)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(color: .black.opacity(0.6), radius: 2, x: 2, y: 2)
                        Text(myImage.name)
                    }
                    .onTapGesture {
                        vm.display(myImage)
                    }
                }
            }
        }.padding(.horizontal)
    }
    
    var selectedImage: some View {
        Group {
            if let image = vm.image {
         
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 0, maxWidth: .infinity)
                
            } else {
       
            }
        }
    }
    
    var editGroup: some View {
        Group {
            TextField("Image Name", text: $vm.imageName) { isEditing in
                vm.isEditing = isEditing
            }
            .focused($nameField, equals: true)
            .textFieldStyle(.roundedBorder)
            HStack {
                Button {
                    if vm.selectedImage == nil {
                        vm.addMyImage(vm.imageName, image: vm.image!)
                    } else {
                        vm.updateSelected()
                        nameField = false
                    }
                } label: {
                    ButtonLabel(symbolName: vm.selectedImage == nil ? "square.and.arrow.down.fill" : "square.and.arrow.up.fill",
                                label: vm.selectedImage == nil ? "Save" : "Update")
                }
                .disabled(vm.buttonDisabled)
                .opacity(vm.buttonDisabled ? 0.6 : 1)
                if !vm.deleteButtonIsHidden {
                    Button {
                        vm.deleteSelected()
                    } label: {
                        ButtonLabel(symbolName: "trash", label: "Delete")
                    }
                }
            }
        }
    }
    
    var pickerButtons: some View {
        HStack {
                Button {
                    vm.source = .camera
                    vm.showPhotoPicker()
                } label: {
                    ButtonLabel(symbolName: "camera", label: "Camera")
                }
                .alert("Error", isPresented: $vm.showCameraAlert, presenting: vm.cameraError, actions: { cameraError in
                    cameraError.button
                }, message: { cameraError in
                    Text(cameraError.message)
                })
            Button {
                    vm.source = .library
                    vm.showPhotoPicker()
                } label: {
                    ButtonLabel(symbolName: "photo", label: "Photos")
                }
        }
    }
}
