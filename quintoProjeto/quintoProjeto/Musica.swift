import Foundation

class Musica: Identifiable {
    let id: UUID
    let nome: String
    let artista: [String]
    let capa: URL
    
    init(nome: String, artista: [String], capa: URL) {
        self.id = UUID()
        self.nome = nome
        self.artista = artista
        self.capa = capa
    }
}
