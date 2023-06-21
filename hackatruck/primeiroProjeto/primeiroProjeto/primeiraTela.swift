//
//  ContentView.swift
//  primeiroProjeto
//
//  Created by Student03 on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("fotoCaminhao")
                .resizable()
                .scaledToFit()
            
            Text("HackaTruck")
                .bold(true)
                .foregroundColor(.blue)
                .font(.title)
            
    
            HStack {
                Text("Maker")
                    .foregroundColor(.yellow)
                    .bold(true)
                Text("Space")
                    .foregroundColor(.red)
                    .bold(true)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
