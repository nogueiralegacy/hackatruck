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
            
            HelloHackatruck()
                .tabItem {
                    Text("HackaTruck")
                    Image(systemName: "magnifyingglass")
                }
            
            Scroll()
                .tabItem{
                    Text("Scroll")
                    Image(systemName: "person")
                }
            
            Message()
                .tabItem{
                    Text("Message")
                    Image(systemName: "square.and.pencil")
                }
            
            Profile()
                .tabItem{
                    Text("Profile")
                    Image(systemName: "person.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
