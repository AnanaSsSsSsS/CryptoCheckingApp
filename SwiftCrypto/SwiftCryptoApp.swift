//
//  SwiftCryptoApp.swift
//  SwiftCrypto
//
//  Created by macbook on 23.10.2022.
//

import SwiftUI

@main
struct SwiftCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
