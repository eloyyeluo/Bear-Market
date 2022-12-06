//
//  WelcomeView.swift
//  Bear Market
//
//  Created by Rachel S on 12/5/22.
//

import Foundation
import SwiftUI

struct WelcomeView : View {
    
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
                    .padding(.bottom, 80)
                NavigationLink(destination: LoginView()) {
                    Text("Tap to Start")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 45)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
            }
        
        .padding()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
