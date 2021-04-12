//
//  AlmostThereView.swift
//  SnipSwiftUI
//
//  Created by Aida Diallo on 4/9/21.
//

import SwiftUI

struct AlmostThereView: View {
    var body: some View {
        VStack{
            //Add Title text
            
            Text("Almost There!")
                
                .padding(70)
                .font(.title2)
                .font(.largeTitle)
            
            
            //adding scissors picture
            Image("scissors")
                .frame(width: 200, height: 200, alignment: .center)
                .padding(20)
            
            //Add text
            NavigationLink(destination: HomeView(api: ApiHandler())){
                Text("Did You Know:\n90% of fast fashion\ncan be recycled or\nupcycled!")
            }
            .frame(width: 200, height: 200, alignment: .center)
            .foregroundColor(.black)
            .font(.title2)
            .multilineTextAlignment(.center)
            
            //add loding page text
            
            Text("Loading\npage")
                .frame(width: 100/*@END_MENU_TOKEN@*/, height: 100, alignment: /*@START_MENU_TOKEN@*/.center)
                .font(.title2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            
        }
    }
}

struct AlmostThereView_Previews: PreviewProvider {
    static var previews: some View {
        AlmostThereView()
    }
}
