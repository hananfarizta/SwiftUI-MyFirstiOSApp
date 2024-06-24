//
//  CardView.swift
//  MyFirstiOSApp
//
//  Created by Hanan Farizta on 23/06/24.
//

import SwiftUI

struct CardView: View {
    var item: Item = items[2]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 128)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            Text(item.title)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.leading)
            Text(item.text)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .opacity(0.7)
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 252, height: 329)
        .background(
            item.gradient
        )
        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CardView()
}
