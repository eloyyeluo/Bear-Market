//
//  Register.swift
//  Bear Market
//
//  Created by Chris Spencer on 12/7/22.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

struct Register : View {
    var body: some View {
        return Text("REGISTER")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 150, height: 35)
            .background(Color.green)
            .cornerRadius(15.0)
    }
    class FirebaseAuthManager {
        func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
            Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
                if let user = authResult?.user {
                    print(user)
                    completionBlock(true)
                } else {
                    completionBlock(false)
                }
            }
        }
    }
}


struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
