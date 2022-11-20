//
//  ContentView.swift
//  SwiftCrypto
//
//  Created by macbook on 23.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.red
                .ignoresSafeArea()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
