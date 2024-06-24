//
//  HomeView.swift
//  MyFirstiOSApp
//
//  Created by Hanan Farizta on 23/06/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(items) { item in
                            NavigationLink(destination: DetailView()) {
                                CardView(item: item)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Learn SwiftUI")
                Text("Recent course")
                    .font(.subheadline).bold()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding()
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                    ForEach(items) { item in
                        NavigationLink(destination: DetailView()) {
                            SmallCardView(item: item)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
