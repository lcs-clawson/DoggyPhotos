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
            
            Button(action: {
                withAnimation(.easeIn(duration: 1.0)) {
                }
            }, label: {
                Image(systemName: "arrow.down.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width:40)
                    .tint(.black)
                
            })
                
            Spacer()
            
        }
        
    }
}

struct DoggyView_Previews: PreviewProvider {
    static var previews: some View {
        DoggyView()
    }
}

