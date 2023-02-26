//
//  descriptionPage.swift
//  YourCloset
//
//  Created by leena alajlani on 15/02/2023.
//

import SwiftUI

struct descriptionPage: View {
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

struct descriptionPage_Previews: PreviewProvider {
    static var previews: some View {
        descriptionPage()
            .environmentObject(ViewModel())
    }
}
