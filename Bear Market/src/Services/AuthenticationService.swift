//
//  AuthenticationService.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/4/22.
//

import Foundation
import Firebase

class AuthenticationService: ObservableObject {
  @Published var user: User?
  private var authenticationStateHandler: AuthStateDidChangeListenerHandle?

  init() {
    addListeners()
  }

    //TODO: Handle signin by providing email and password
  static func signIn() {
    
  }

  private func addListeners() {
    if let handle = authenticationStateHandler {
      Auth.auth().removeStateDidChangeListener(handle)
    }

    authenticationStateHandler = Auth.auth()
      .addStateDidChangeListener { _, user in
        self.user = user
      }
  }
}

