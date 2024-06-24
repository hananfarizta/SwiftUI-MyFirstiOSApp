//
//  ListView.swift
//  MyFirstiOSApp
//
//  Created by Hanan Farizta on 23/06/24.
//

import SwiftUI

struct ListView: View {
    @State var show = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    ListItem()
                        .fullScreenCover(isPresented: $show, content: {
                            DetailView()
                        })
                        .onTapGesture {
                            show.toggle()
                        }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Courses")
        }
    }
}

#Preview {
    ListView()
}
