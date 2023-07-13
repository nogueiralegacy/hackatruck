//
//  PersonagemInformacao.swift
//  sextoProjeto
//
//  Created by Student03 on 29/06/23.
//

import SwiftUI

struct PersonagemInformacao: View {
    var personagem: Personagem
    
    var view = ViewModel()
    
    var body: some View {
            VStack {
                HStack {
                    Text(personagem.name!)
                        .font(.largeTitle)
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color(.black))
                .padding()
                
                
                AsyncImage(url: personagem.image) { image in
                    image
                    
                }
                placeholder: {
                    ProgressView()
                }
                
                VStack(alignment: .leading) {
                    let resultado = view.configuraResultado(personagem: personagem)
                    
                        ForEach(0 ... 10, id: \.self) { indice in
                            HStack {
                                if (view.par(numero: indice)) {
                                    Text(resultado[indice]!)
                                    Text(resultado[indice + 1]!)
                                }
                            }
                    }
                    
                }.frame(width: 300)
                .padding()
                .border(Color(.black), width: 2)
               
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("papelAntigo"))
    }
}

