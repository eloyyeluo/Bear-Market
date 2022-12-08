//
//  ContentView.swift
//  Summary
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
        NavigationView {
          LoginView()
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
