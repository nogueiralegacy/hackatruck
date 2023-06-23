//
//  ContentView.swift
//  terceiroProjeto
//
//  Created by Student03 on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem{
                    Text("Home")
                    Image(systemName: "hourglass.end")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
