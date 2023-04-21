import SwiftUI

struct DoggyView: View {
    
    @State var imageUrl: String?
    
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
                    // Set the image URL when the button is pressed
                    imageUrl = "https://images.dog.ceo/breeds/terrier-border/n02093754_3036.jpg"
                }
            }, label: {
                Image(systemName: "arrow.down.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width:40)
                    .tint(.black)
            })
            
            Spacer()
            
            
            if let url = imageUrl, let imageUrl = URL(string: url) {
                AsyncImage(url: imageUrl,
                           content: { downloadedImage in
                    downloadedImage
                },
                           placeholder: {
                    ProgressView()
                })
                .scaledToFit()
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct DoggyView_Previews: PreviewProvider {
    static var previews: some View {
        DoggyView()
    }
}

