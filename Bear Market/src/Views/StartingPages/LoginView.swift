//
//  LoginView.swift
//  Bear Market
//
//  Created by Rachel S on 12/4/22.
//

import Foundation
import SwiftUI
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

struct LoginView : View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
            VStack {
                Text("Bear Market")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                Image("bearmarket")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
    //                .cornerRadius(150)
                    .padding(.bottom, 20)
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                NavigationLink(destination: MainView()){
                    VStack {
                        LoginButton()
                        Text("OR")
                        Register()
                    }
                }.navigationBarBackButtonHidden(true)
            }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
