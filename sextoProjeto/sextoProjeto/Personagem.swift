import Foundation


//Representacao varinha
class Wand : Decodable {
    let wood : String?
   let core : String?
    let length : Double?
}


//Ser literal ao nome da constante por conta da API
class Personagem: Decodable, Identifiable {
    let id : String
    let name :  String?
    let alternate_names : [String]?
    let species :  String?
    let gender :  String?
    let house :  String?
    let dateOfBirth :  String?
    let yearOfBirth : Int?
    let wizard : Bool?
    let ancestry :  String?
    let eyeColour :  String?
    let lethairColour :  String?
    let wand : Wand?
    let patronus:  String?
    let hogwartsStudent : Bool?
    let hogwartsStaff : Bool?
    let actor :  String?
    let alternate_actors : [String]?
    let alive : Bool?
    let image :  URL?
    
    init(id: String, name: String?, alternate_names: [String]?, species: String?, gender: String?, house: String?, dateOfBirth: String?, yearOfBirth: Int?, wizard: Bool?, ancestry: String?, eyeColour: String?, lethairColour: String?, wand: Wand?, patronus: String?, hogwartsStudent: Bool?, hogwartsStaff: Bool?, actor: String?, alternate_actors: [String]?, alive: Bool?, image: String?) {
        self.id = id
        self.name = name
        self.alternate_names = alternate_names
        self.species = species
        self.gender = gender
        self.house = house
        self.dateOfBirth = dateOfBirth
        self.yearOfBirth = yearOfBirth
        self.wizard = wizard
        self.ancestry = ancestry
        self.eyeColour = eyeColour
        self.lethairColour = lethairColour
        self.wand = wand
        self.patronus = patronus
        self.hogwartsStudent = hogwartsStudent
        self.hogwartsStaff = hogwartsStaff
        self.actor = actor
        self.alternate_actors = alternate_actors
        self.alive = alive
        
        self.image = URL(string: image!)
    }
}
