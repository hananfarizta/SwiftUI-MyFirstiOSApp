//
//  ContentView.swift
//  MyFirstiOSApp
//
//  Created by Hanan Farizta on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ListView()
                .tabItem {
                    Image(systemName: "eyes.inverse")
                    Text("Home")
                }
        }
    }
}

#Preview {
    ContentView()
}
