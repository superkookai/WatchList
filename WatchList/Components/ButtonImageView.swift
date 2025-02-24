//
//  ButtonImageView.swift
//  WatchList
//
//  Created by Weerawut Chaiyasomboon on 24/2/2568 BE.
//

import SwiftUI

struct ButtonImageView: View {
    let symbolName: String
    
    var body: some View {
        Image(systemName: symbolName)
            .resizable()
            .scaledToFit()
            .foregroundStyle(.blue.gradient)
            .padding(8)
            .background(
                Circle()
                    .fill(.ultraThinMaterial)
            )
            .frame(width: 80)
    }
}

#Preview {
    ButtonImageView(symbolName: "plus.circle.fill")
}
