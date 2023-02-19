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
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        NavigationView {
            VStack {
                if let image = vm.image {
                    ZoomableScrollView {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }
                } else {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.6)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.horizontal)
                }
                HStack {
                    Button {
                        vm.source = .camera
                        vm.showPhotoPicker()
                    } label: {
                        Text("Camera")
                    }
                    Button {
                        vm.source = .library
                        vm.showPhotoPicker()
                    } label: {
                        Text("Photos")
                    }
                }
                Spacer()
            }
            .sheet(isPresented: $vm.showPicker) {
                ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                    .ignoresSafeArea()
            }
            .alert("Error", isPresented: $vm.showCameraAlert, presenting: vm.cameraError, actions: { cameraError in
                cameraError.button
            }, message: { cameraError in
                Text(cameraError.message)
            })
            .navigationTitle("My Images")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
