//
//  SignUpView.swift
//  SnipSwiftUI
//
//  Created by Aida Diallo on 4/9/21.
//

import SwiftUI

struct SignUpView: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var Password: String = ""
    var body: some View {
        VStack{
            //text
            Text("Sign Up")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(20)
            
            TextField("First Name", text: $firstName)
                .frame(width: 350, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color.gray)
                .padding(10)
            
            
            TextField("Last Name", text: $lastName)
                .frame(width: 350, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color.gray)
                .padding(10)
            
            TextField("Email", text: $email)
                .frame(width: 350, height: 70, alignment: .center)
                .border(Color.gray)
                .padding(10)
            
            TextField("Password", text: $Password)
                .frame(width: 350, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color.gray)
                .padding(10)
            
            //signup button
            Button("Sign Up"){
                
            }
            .frame(width: 350, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(35)
            
            //text
            Text("or")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
            
            NavigationLink(destination: AlmostThereView()){
                Text("Facebook")
            }
            .frame(width: 350, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(35)
        }
        
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
