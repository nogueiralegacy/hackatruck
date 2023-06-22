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
    var body: some View {
        
        VStack {
            ZStack {
                imagemBackGround
                    .resizable()
                    .scaledToFill()
                    .offset(x: 75, y: 0)
                    .opacity(0.2)
                    .zIndex(0)
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
