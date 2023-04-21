//
//  RemoteImageView.swift
//
//  Created by Russell Gordon on 2022-02-26.
//
//  LICENSE:
//  This work is licensed under CC BY-NC-SA 4.0



import SwiftUI

struct RemoteImageView: View {
    
    // MARK: Stored properties
    
    // What image to show
    let urlOfImageToShow: String
    
    // MARK: Computed properties
    var body: some View {
        
        
        if let url = URL(string: urlOfImageToShow) {
            
            
            AsyncImage(url: url,
                       content: { downloadedImage in
                downloadedImage
            },
                       placeholder: {
                ProgressView()
            })
            
        } else {
            
            Image(systemName: "questionmark.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
                .foregroundColor(.blue)
        }

    }
    
}

struct RemoteImageView_Previews: PreviewProvider {
        
    static var previews: some View {
        
        // Good URL example
        RemoteImageView(urlOfImageToShow: {
            "https://images.dog.ceo/breeds/schnauzer-miniature/n02097047_5989.jpg"
        }())

    }
    
}
