//
//  loginSignupView.swift
//  SnipSwiftUI
//
//  Created by Aida Diallo on 4/9/21.
//

import SwiftUI

struct loginSignupView: View {
    var body: some View {
        NavigationView{
        VStack{
         
            Image("design")
                .frame(width: 200, height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(100)
                
           //signup button
           
            NavigationLink(destination: SignUpView()){
                    Text("Sign up")
                }
                .foregroundColor(.gray)
                .frame(width: 350, height:60)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.gray))
                .padding(20)
               
            
         
            //Login Buton
           
                NavigationLink(destination: LoginView()){
                    Text("Login")
                }
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.gray)
                .frame(width: 350, height: 60, alignment: .center)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.gray))
                .padding(20)
               
                    
            }
           
            
        }
    }
}

struct loginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        loginSignupView()
    }
}
