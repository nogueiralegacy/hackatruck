import Foundation

class ViewModel: ObservableObject {
    
    @Published var personagens: [Personagem] = []
    
    func fetch() {
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters")
        else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            
            do {
                let parsed = try JSONDecoder().decode([Personagem].self, from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            } catch {
                print("ERRO em receber ou converter o JSON")
            }
        }
        
        task.resume()
    }
    
    
    
    func configuraResultado(personagem : Personagem) -> [String?]{
        let resultado = [
            "Nome", personagem.name,
            "Espécie", personagem.species,
            "Gênero", personagem.gender,
            "Casa", personagem.house,
            "Data de Nascimento", personagem.dateOfBirth,
            "Descendência", personagem.ancestry]
        
        return resultado
    }
    
    func par(numero: Int) -> Bool{
        return numero % 2 == 0
    }
}
