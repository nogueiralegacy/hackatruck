//
//  TelaPlay.swift
//  quintoProjeto
//
//  Created by Student03 on 27/06/23.
//

import SwiftUI

struct TelaPlay: View {
    @State var musica: Musica
    
    init(musica: Musica) {
        self.musica = musica
    }
    
    var body: some View {
        VStack {
            AsyncImage(url: musica.capa) {image in
                image
                    .resizable()
                    .frame(width: 280, height: 280)
                    .cornerRadius(8)
            }
            placeholder: {
                ProgressView()
            }
            .padding(.top, 60)
            
            VStack {
                Text(musica.nome)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .font(.headline)
                HStack {
                    ForEach(musica.artista, id: \.self) { artista in
                        Text(artista)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
                    
            }
            
            
            
            HStack(spacing: 40) {
                Image(systemName: "shuffle")
                Image(systemName: "backward.end.fill")
                Image(systemName: "play.fill")
                Image(systemName: "forward.end.fill")
                Image(systemName: "repeat")
                    
            }
            .font(.system(size:30))
            .colorInvert()
            .padding(.top, 100)
            
            
            Spacer()
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [.black, .green]), startPoint: .bottom, endPoint: .top)
        )
        
    }
}

struct TelaPlay_Previews: PreviewProvider {
    static var previews: some View {
        TelaPlay(musica: Musica(nome: "Fogo", artista: ["Naldo Benny"], capa: URL(string: "https://www.jornaldorap.com.br/wp-content/uploads/2020/04/naldo_benny_live.jpg")!))
    }
}
