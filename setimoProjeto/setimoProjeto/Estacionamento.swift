import Foundation


class Carro: Codable {
    let modelo: String
    let ano: Int
    let cor: String
    let preco: Double
    
    init(modelo: String, ano: Int, cor: String, preco: Double) {
        self.modelo = modelo
        self.ano = ano
        self.cor = cor
        self.preco = preco
    }
}

class Estacionamento {
    let nome: String
    let endereco: String
    let vagas: Int
    let carros: [Carro]
    
    init(nome: String, endereco: String, vagas: Int, carros: [Carro]) {
        self.nome = nome
        self.endereco = endereco
        self.vagas = vagas
        self.carros = carros
    }
}


