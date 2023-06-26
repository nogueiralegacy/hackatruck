//
//  ContentView.swift
//  quartoProjeto
//
//  Created by Student03 on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: PrimeiraTela()) {
                    Text("Primeira Tela")
                }
                NavigationLink(destination: SegundaTela()) {
                    Text("Segunda Tela")
                }
            
                Button ("TerceiraTela") {
                    showSheet = true
                }
                .sheet(isPresented: $showSheet) {
                    TerceiraTela()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
