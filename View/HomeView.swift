//
//  HomeView.swift
//  SnipSwiftUI
//
//  Created by Aida Diallo on 4/9/21.
//

import SwiftUI
import SDWebImageSwiftUI
struct HomeView: View{
    @ObservedObject var api : ApiHandler
    var url = "https://api.jikan.moe/v3/search/anime?q=naruto"
    @State var image:UIImage = UIImage()
    
    var body: some View {
        VStack{
            List(api.results,id: \.id){ result in
                VStack{
                    HStack{
                        //profile picture
                        WebImage(url: URL(string: result.image_url ?? ""))
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 32, height: 32, alignment: .leading)
                            .clipShape(Circle())
                        
                        //name
                        Text(result.title ?? "")
                            .padding(10)
                        //location  icon
                        Image("loc")
                            .frame(width: 32, height: 32, alignment: .trailing)
                            .padding(.leading, 140)
                        //city
                        Text("Atlanta")
                        
                        
                    }
                    ZStack{
                        WebImage(url: URL(string: result.image_url ?? ""))
                        Text("Before")
                            .background(Color(.green))
                            .padding(.top, 300)
                            .padding(.leading, 180)
                        
                    }
                    HStack{
                        Text("#Bedazzle, #DIY")
                            .font(.title3)
                        Image("comment")
                            .padding(.leading, 100)
                    }
                }
                
            }.onAppear(perform: {
                self.api.apiHandler(url: url)
                
            })
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(api: ApiHandler())
    }
}
