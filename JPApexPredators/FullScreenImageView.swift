//
//  FullScreenImageView.swift
//  JPApexPredators
//
//  Created by Abigail Turner on 09/10/2024.
//

import SwiftUI

struct FullScreenImageView: View {
    let imageName: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.black.ignoresSafeArea()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onTapGesture { dismiss() }
        }
        
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "xmark.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
        }
    }
}

