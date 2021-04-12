//
//  ApiHandler.swift
//  SnipSwiftUI
//
//  Created by Aida Diallo on 4/10/21.
//

import UIKit
import SDWebImage
class ApiHandler: ObservableObject {
    
    @Published var results : [Anime] = []
    @Published var img : String?
 func apiHandler(url: String){
        let urlString  = URL(string: url)
        if let urlString = urlString{
            let task = URLSession.shared.dataTask(with: urlString, completionHandler: { (data, response, error) in
                if let data = data{
                    let decoder = try? JSONDecoder().decode(Data.self, from: data)
                    DispatchQueue.main.async{
                    self.results = decoder?.results ?? []
                        for i in 0...self.results.count-1{
                            self.img = self.results[i].image_url
                        }
                    }
                }
            }
            
            )
            task.resume()
            
        }
    }
   
    
}
