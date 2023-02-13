//
//  YourClosetApp.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 15/07/1444 AH.
//

import SwiftUI

@main
struct YourClosetApp: App {
    @StateObject var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()

                .environmentObject(vm)
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
