//
//  ContentView.swift
//  airbnb
//
//  Created by Gizem Candemir on 7/16/25.
//

import SwiftUI

struct ContentView: View {
    init() {
        UINavigationBar.setTransparentAppearance()
     }

    var body: some View {
       MainTabView()
    }
}

#Preview {
    ContentView()
}
