//
//  segundaTela.swift
//  primeiroProjeto
//
//  Created by Student03 on 21/06/23.
//

import SwiftUI

struct segundaTela: View {
    var body: some View {
        VStack {
            Image("fotoCaminhao")
                .resizable()
                .scaledToFit()
            
            ZStack {
                Image("fotoCaminhao")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                Text("HackaTruck")
                    .foregroundColor(.blue)
                    .font(.title)
                    .bold(true)
                    .offset(x: 0, y: -50)
            }.padding(.vertical)
            
            HStack {
                HStack {
                    Text("Maker")
                        .foregroundColor(.yellow)
                    Text("Space")
                        .foregroundColor(.red)
                }.offset(x: 0, y: -30)
                    .font(.headline)
                
            }.frame(width: 200, height: 150)
                .background(.black)
            
        
        }
    }
}

struct segundaTela_Previews: PreviewProvider {
    static var previews: some View {
        segundaTela()
    }
}
