//
//  terceiraTela.swift
//  primeiroProjeto
//
//  Created by Student03 on 21/06/23.
//

import SwiftUI

struct terceiraTela: View {
    var imagemBackGround = Image("fotoCaminhao")
    
    @State private var showAlert = false
    @State private var name: String = "Gabriel"
    var body: some View {
        
        VStack {
            
            HStack {
                TextField("Coloque seu nome:", text: $name)
            }
            
            HStack {
                Text("Ola, \(name)")
            }
            
            ZStack {
                imagemBackGround
                    .resizable()
                    .scaledToFill()
                    .offset(x: 75, y: 0)
                    .opacity(0.2)
                    .zIndex(0)
                
                
                Image("logoHackatruck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                
                Image("caminhaoSemFundo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .offset(x: 0, y: -70)
            }
            
            HStack {
                Button("Entrar") {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Alerta !"),
                    message: Text("Você irá fazer o desafio da aula agora"),
                    dismissButton: .default(Text("Vamos lá!"))
                    )
                }
            }
        }
    }
    
}
struct terceiraTela_Previews: PreviewProvider {
    static var previews: some View {
        terceiraTela()
    }
}
