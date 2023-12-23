import SwiftUI

struct GalleryView: View {
    
    @State var photoData: [String] = []
    @State var dataService: DataService = DataService()
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader{ proxy in
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: [
                        GridItem(spacing: 10),
                        GridItem(spacing: 10),
                        GridItem(spacing: 10)
                    ], spacing: 10){
                        ForEach(photoData, id: \.self){ photo in
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                        }
                    }
                }
            }
            
        }.onAppear{
            photoData = dataService.getPhotoData()
        }.padding(.horizontal, 20)
    }
}

#Preview {
    GalleryView()
}
