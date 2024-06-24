//
//  SmallCardView.swift
//  MyFirstiOSApp
//
//  Created by Hanan Farizta on 24/06/24.
//

import SwiftUI

struct SmallCardView: View {
    var item: Item = items[2]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 99)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            Text(item.title)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.leading)
            Text("20 sections - 3 hours")
                .opacity(0.7)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(height: 222)
        .background(
            item.gradient
        )
        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SmallCardView()
}
