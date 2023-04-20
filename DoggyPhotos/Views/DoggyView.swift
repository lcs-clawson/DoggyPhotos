//
//  DoggyView.swift
//  DoggyPhotos
//
//  Created by Cooper Lawson on 2023-04-20.
//

import SwiftUI

struct DoggyView: View {
    var body: some View {
    
        VStack{
           
            Text("Doggy Photos")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .bold()
            
            Text("What will your doggy photo of the day be?")
                .font(.footnote)
                .fontWeight(.semibold)
            
            Spacer()
        }
        
    }
}

struct DoggyView_Previews: PreviewProvider {
    static var previews: some View {
        DoggyView()
    }
}

