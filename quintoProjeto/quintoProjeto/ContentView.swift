import SwiftUI

struct ContentView: View {
    
    var musicas: [Musica] = [
        Musica(
            nome: "Fogo",
            artista: ["Naldo Benny"],
            capa: URL(string: "https://www.jornaldorap.com.br/wp-content/uploads/2020/04/naldo_benny_live.jpg")!),
        Musica(
            nome: "Love, Love",
            artista: ["Naldo Benny", "Melody"],
            capa: URL(string: "https://portalpopline.com.br/wp-content/uploads/2020/06/naldo-benny-yuri.jpg")!),
        Musica(
            nome: "Amor de Cholate",
            artista: ["Naldo Benny"],
            capa: URL(string: "https://uploads.metropoles.com/wp-content/uploads/2023/02/22152127/Naldo-Benny-4-1024x686.jpg")!),
        Musica(
            nome: "Chantily",
            artista: ["Naldo Benny"],
            capa: URL(string: "https://media.fstatic.com/DH5yngg4vQQdK9csLNLAzsPJ9N8=/full-fit-in/290x478/filters:format(webp)/media/artists/avatar/2022/12/naldo-benny_a305866.jpg")!),
        Musica(
            nome: "Se joga",
            artista: ["Naldo Benny"],
            capa: URL(string: "https://odia.ig.com.br/_midias/jpg/2017/12/14/naldo1-857181.jpg")!),
        Musica(
            nome: "Exagerado",
            artista: ["Naldo Benny"],
            capa: URL(string: "https://i0.statig.com.br/bancodeimagens/7s/cy/d0/7scyd0st68s1zaemlorvcmoqh.jpg")!),
        Musica(
            nome: "Pa Que Me Invitan",
            artista: ["Naldo Benny", "Jencarlos Canela"],
            capa: URL(string: "https://www.bandab.com.br/wp-content/uploads/2023/03/Naldo-Benny.jpg.webp")!),
        Musica(
            nome: "Pior É Te Perder",
            artista: ["Naldo Benny", "Zeze di Camargo"],
            capa: URL(string: "https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2023/05/22/naldobenny_341907036_1278959106351215_3252508067350636649_n-1h81zwl8bf8te.jpg")!),
        Musica(
            nome: "Meu Bem",
            artista: ["Naldo Benny"],
            capa: URL(string: "https://i0.wp.com/benlev.com.br/wp-content/uploads/2023/02/naldo-1280x720-1.jpg?w=1280&ssl=1")!),
    ]

    
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    AsyncImage(url: URL(string: "https://www.jornaldorap.com.br/wp-content/uploads/2020/04/naldo_benny_live.jpg")) {image in
                        image
                            
                            .resizable()
                            .frame(width: 220, height: 220)
                            .cornerRadius(8)
                            .padding(.top, 20)
                            
                    }
                placeholder: {
                    ProgressView()
                }
                    VStack(alignment: .leading) {
                        Text("This is Naldo")
                            .font(.title)
                            .bold()
                        HStack {
                            Image("caminhao")
                                .resizable()
                                .frame(width: 28, height: 28)
                            Text("Daniel Nogueira")
                                .font(.caption)
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .offset(x: -90)
                    Spacer()
                    ScrollView {
                        VStack(alignment: .leading) {
                            
                            ForEach(musicas) { musica in
                                NavigationLink(destination: TelaPlay(musica: musica)) {
                                    HStack{
                                        AsyncImage(url: musica.capa) {image in
                                            image
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        }
                                    placeholder: {
                                        ProgressView()
                                    }
                                        VStack(alignment: .leading) {
                                            Text(musica.nome)
                                                .font(.subheadline)
                                            HStack {
                                                ForEach(musica.artista, id: \.self) {
                                                    artista in Text(artista)
                                                        .font(.caption)
                                                }
                                            }
                                        }
                                        .foregroundColor(.white)
                                        
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding()
                    }
                    .padding(.top, 10)
                    
                    Spacer()
                    Text("Sugeridos")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: -90)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach (musicas) { musica in
                                VStack {
                                    AsyncImage(url: musica.capa) { imagem in
                                        imagem
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(8)
                                    }
                                placeholder: {
                                    ProgressView()
                                }
                                    Text(musica.nome)
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                }
                                .padding(.horizontal, 8)
                            }
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: [.black, .green]), startPoint: .bottom, endPoint: .top)
            )
        }
          }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
