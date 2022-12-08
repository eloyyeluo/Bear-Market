//
//  LoginButton.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/5/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

struct LoginButton : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 150, height: 45)
            .background(Color.green)
            .cornerRadius(15.0)
    }
    @State var email: String = ""
    @State var password: String = ""
    func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in if error != nil {
                print(error?.localizedDescription)
            }
        }
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
