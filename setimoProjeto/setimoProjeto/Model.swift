import Foundation

class requestDadosBanco: ObservableObject {
    @Published var arrayCarro: [Carro] = []
    
    func fetchCarro() {
        guard let url = URL(string:"http://127.0.0.1:1880/todos") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Erro na recepcao dos dados |\(error)")
                return
            }
            
            if let data = data {
                do {
                    let carros = try JSONDecoder().decode([Carro].self, from: data)
                    
                    DispatchQueue.main.async {
                        self.arrayCarro = carros
                    }
                } catch {
                    print("Erro na conversao dos dados")
                }
            }
        }.resume()
    }
}
