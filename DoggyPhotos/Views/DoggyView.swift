import SwiftUI

struct DoggyView: View {
    
    @State var imageUrlOpacity = 0.0
    
    @State var currentDoggy = exampleDoggy
    
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
                Task {
                    await FetchRandomImage()
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
            } else {
                ProgressView()
                
            }
        }
    }
    
    func FetchRandomImage() async {
        if let doggy = await NetworkService.fetch() {
            imageUrl = doggy.imageUrl
        }
    }
}

struct DoggyView_Previews: PreviewProvider {
    static var previews: some View {
        DoggyView()
    }
}

