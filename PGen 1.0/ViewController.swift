//
//  ViewController.swift
//  PGen 1.0
//
//  Created by FAB on 29/07/2023.
//

import UIKit

class ViewController: UIViewController {

    // NOUVELLE APPLICATION //
    
    // Label "Choisi ton inspiration
    @IBOutlet weak var inspirationLabel: UILabel!
    
    // BOUTONS //
    // Britannia
    @IBAction func britishNames(_ sender: UIButton) {
        
        let britishNames: [String] = [
            "Oliver", "Sophie", "William", "Amelia", "James", "Olivia", "Harry", "Emily", "George", "Grace",
            "Henry", "Ella", "Edward", "Charlotte", "Alexander", "Lily", "Charles", "Lucy", "David", "Alice",
            "Samuel", "Mia", "Thomas", "Isabella", "Daniel", "Emma", "Joseph", "Ava", "Robert", "Eva",
            "John", "Sophia", "Michael", "Jessica", "Andrew", "Chloe", "Matthew", "Layla", "Richard", "Millie",
            "Benjamin", "Harper", "Lewis", "Zoe", "Daniel", "Scarlett", "Callum", "Ruby", "Finn", "Georgia"
        ]

        let britishSurnames: [String] = [
            "Smith", "Johnson", "Brown", "Taylor", "Miller", "Davis", "Wilson", "Moore", "Anderson", "Jackson",
            "Thomas", "Harris", "Thompson", "White", "Walker", "Lewis", "Roberts", "Hall", "Johnson", "Clark",
            "Williams", "Allen", "Scott", "King", "Green", "Baker", "Adams", "Nelson", "Hill", "Parker",
            "Turner", "Collins", "Ward", "Cook", "Murphy", "Cooper", "Bailey", "Richardson", "Cox", "Howard",
            "Ward", "Hughes", "Graham", "Edwards", "Watson", "Reed", "Bennett", "Carter", "Phillips", "Mitchell"
        ]

        let randomIndex1 = Int.random(in: 0..<britishSurnames.count)
        let randomNom = britishSurnames[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<britishNames.count)
        let randomPrenom = britishNames[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
    }
    // Cherokee
    // @IBOutlet weak var cherokeeButton: UIButton!
    @IBAction func cherokeeButton(_ sender: UIButton) {
        
        let animalInspirations: [String] = [
            "Tigre", "Loup", "Éléphant", "Panda", "Lion",
            "Oiseau", "Dauphin", "Gorille", "Renard", "Baleine",
            "Singe", "Girafe", "Koala", "Chien", "Chat",
            "Ours", "Cerf", "Tortue", "Souris", "Poisson",
            "Aigle", "Papillon", "Chouette", "Hibou", "Requin",
            "Orque", "Léopard", "Loutre", "Crocodile", "Perroquet",
            "Caméléon", "Poule", "Cheval", "Serpent", "Grenouille",
            "Coccinelle", "Panthère", "Colibri", "Poussin", "Pélican",
            "Pingouin", "Kangourou", "Otarie", "Raton-laveur", "Autruche",
            "Morse", "Chimpanzé", "Castor", "Hippopotame", "Gazelle"
        ]

        let adjectiveInspirations: [String] = [
            "Lumineux", "Vif", "Brillant", "Mystérieux", "Flamboyant",
            "Serein", "Scintillant", "Ardent", "Étincelant", "Azur",
            "Pourpre", "Saphir", "Turquoise", "Emeraude", "Rubis",
            "Or", "Argent", "Cuivre", "Bronze", "Rougeoyant",
            "Doré", "Argenté", "Nacré", "Iridescent", "Céleste",
            "Charnel", "Écarlate", "Pourpre", "Olive", "Caramel",
            "Framboise", "Pêche", "Indigo", "Ambre", "Topaze",
            "Mauve", "Aigue-marine", "Opalescent", "Cyan", "Orangé",
            "Sombre", "Clair", "Profond", "Vibrant", "Mat",
            "Éclatant", "Terne", "Métallique", "Pastel", "Vaporeux"
        ]

        
        let randomIndex1 = Int.random(in: 0..<adjectiveInspirations.count)
        let randomNom = adjectiveInspirations[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<animalInspirations.count)
        let randomPrenom = animalInspirations[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
        
    }
    // Futuriste
    @IBAction func futuristeButton(_ sender: UIButton) {
        let prenomsCyberFutur = [
            "Aeon", "Nyx", "Orion", "Luna", "Nova",
            "Zara", "Kai", "Astra", "Caden", "Seren",
            "Eris", "Zephyr", "Lyra", "Phoenix", "Kira",
            "Caelum", "Dax", "Vesper", "Xena", "Kairos",
            "Raven", "Ari", "Cyra", "Zenith", "Thorne",
            "Nexa", "Jaxon", "Raine", "Evo", "Zuri",
            "Cosmo", "Electra", "Kaiya", "Kairo", "Ryker",
            "Ariya", "Sylvan", "Nyxon", "Elara", "Kael",
            "Skylar", "Aeris", "Zephyra", "Orin", "Aria",
            "Zara", "Cassius", "Sarai", "Xander", "Nova",
            "Silverseek", "Techblade", "Quantum", "Nebulon", "Starforge",
            "Synthwave", "Vortex", "Exocore", "Astrax", "Binary",
            "Spectron", "Cyberdusk", "Neonova", "Cosmic", "Ferrum",
            "Galaxian", "Omnitech", "Infinix", "Luminex", "Pulsar",
            "Circuit", "Nextron", "Helix", "Aerion", "Orbitech",
            "Zephyrus", "Eclipse", "Hyperflux", "Aether", "Virtex",
            "Eon", "Quantex", "Nyx", "Synthius", "Vividium",
            "Axion", "Synchron", "Etherium", "Radian", "Stellar",
            "Aegis", "Vortex", "Eterna", "Luminex", "Nocturnix",
            "Astralis", "Zerion", "Omnitrax", "Cortex", "Sagitta"
        ]

        let randomIndex1 = Int.random(in: 0..<prenomsCyberFutur.count)
        let randomNom = prenomsCyberFutur[randomIndex1]
        
        let pseudo = randomNom
        
        pseudoLabel.text = pseudo
    }
    // Gaullix
    @IBAction func gaullixButton(_ sender: UIButton) {
        let gaullixNames = [
            "Gigantix", "Bafouillix", "Pantouflix", "Grincheuxix", "Croustillix",
            "Turbulentix", "Rigolix", "Zigzagix", "Gribouillix", "Farfelix",
            "Franchouillix", "Chiffonnix", "Gastonix", "Pirouetix", "Cacahuètix",
            "Patafix", "Mousticix", "Radotix", "Ratatouillix", "Zinzinix",
            "Saucissonix", "Marmeladix", "Tournicotix", "Chouravix", "Bidouillix",
            "Bouillabaisseix", "Catastrophix", "Gastronomix", "Croissantix",
            "Pantouflardix", "Boulangerix", "Escargotix", "Bordelix", "Limonadix", "Cocoricix", "Jardinix", "Galetteix", "Tagadix",
            "Globulix", "Ratatouilix", "Pépéfix", "Tournicotix", "Chocolatix",
            "Nénufarix", "Tartiflix", "Pittorix", "Absurdix", "Excentrix",
            "Déjantix", "Étrangix"
        ]
        
        let randomIndex1 = Int.random(in: 0..<gaullixNames.count)
        let randomNom = gaullixNames[randomIndex1]
        
        let pseudo = randomNom
        
        pseudoLabel.text = pseudo

    }
    // Hollywood
    @IBAction func hollywoodButton(_ sender: UIButton) {
        
        let celebrityLastNames: [String] = [
            "Smith", "Johnson", "Williams", "Jones", "Brown",
            "Davis", "Miller", "Wilson", "Moore", "Taylor",
            "Anderson", "Thomas", "Jackson", "White", "Harris",
            "Martin", "Thompson", "Garcia", "Martinez", "Robinson",
            "Clark", "Rodriguez", "Lewis", "Lee", "Walker",
            "Hall", "Allen", "Young", "King", "Wright",
            "Scott", "Green", "Baker", "Adams", "Nelson",
            "Hill", "Ramirez", "Campbell", "Mitchell", "Roberts",
            "Carter", "Phillips", "Evans", "Turner", "Torres",
            "Parker", "Collins", "Edwards", "Stewart", "Flores"
        ]


        let celebrityFirstNames: [String] = [
            "Leonardo", "Jennifer", "Tom", "Angelina", "Brad",
            "Meryl", "Robert", "Julia", "Johnny", "Charlize",
            "Denzel", "Scarlett", "Will", "Nicole", "Samuel",
            "Kate", "George", "Emma", "Matt", "Cate",
            "Daniel", "Anne", "Hugh", "Natalie", "Chris",
            "Cameron", "Russell", "Amy", "Christian", "Sandra",
            "Joaquin", "Reese", "Keanu", "Jessica", "Liam",
            "Halle", "Ryan", "Penelope", "Mark", "Helen",
            "Idris", "Gwyneth", "Ewan", "Charisma", "Jared",
            "Emily", "Edward", "Zoe", "Chris", "Salma"
        ]
        let randomIndex1 = Int.random(in: 0..<celebrityLastNames.count)
        let randomNom = celebrityLastNames[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<celebrityFirstNames.count)
        let randomPrenom = celebrityFirstNames[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
        
    }
    // Latino
    @IBAction func latinoButton(_ sender: UIButton) {
        
        let latinosNames = [
            "Mateo", "Sofía", "Santiago", "Valentina", "Matías", "Isabella", "Sebastián", "Camila", "Benjamín", "Lucía",
            "Diego", "Emma", "Emiliano", "Mia", "Leonardo", "Sara", "Daniel", "Ava", "David", "Olivia",
            "Samuel", "Emily", "Ángel", "Amelia", "Nicolás", "Scarlett", "Lucas", "Zoe", "Alexa", "Victoria",
            "Juan", "Luna", "Luis", "Valeria", "Andrés", "Gabriela", "Gabriel", "Renata", "Carlos", "Martina",
            "Joaquín", "Julia", "José", "María", "Felipe", "Catalina", "Miguel", "Ana", "Rafael", "Paula"
        ]

        let latinosSurnames = [
            "García", "Rodríguez", "Martínez", "López", "Hernández", "González", "Pérez", "Sánchez", "Ramírez", "Torres",
            "Flores", "Rivera", "Gómez", "Díaz", "Ortiz", "Morales", "Cruz", "Reyes", "Álvarez", "Romero",
            "Mendoza", "Ruiz", "Castillo", "Jiménez", "Vargas", "Herrera", "Medina", "Aguilar", "Silva", "Pineda",
            "Gutiérrez", "Rojas", "Ramos", "Orozco", "Soto", "Chávez", "Guerrero", "Estrada", "Sandoval", "Cortés",
            "Vega", "Méndez", "Montes", "Solís", "Zamora", "Vargas", "Valdez", "Delgado", "Lara", "Navarro"
        ]

        
        let randomIndex1 = Int.random(in: 0..<latinosSurnames.count)
        let randomNom = latinosSurnames[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<latinosNames.count)
        let randomPrenom = latinosNames[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
    }
    // Manga
    // @IBOutlet weak var mangaButton: UIButton!
    @IBAction func mangaButton(_ sender: UIButton) {
        
        let mangaNames: [String] = [
            "Ichigo", "Naruto", "Goku", "Luffy", "Sasuke",
            "Vegeta", "Light", "Edward", "Eren", "Gon",
            "Inuyasha", "Lelouch", "Saitama", "Spike", "Ash",
            "Ryuk", "Ichimaru", "Kenshin", "Sakura", "Hinata",
            "Mikasa", "Bulma", "Rukia", "Erza", "Nami",
            "Winry", "Misa", "Holo", "Asuna", "Yuno",
            "Riza", "Shinichi", "Kaneki", "Yusuke", "Kagome",
            "Gon", "Kakashi", "Levi", "Yugi", "Natsu",
            "Jotaro", "Yusuke", "Asta", "Zenitsu", "Gintoki",
            "Kurapika", "Tanjiro", "Sesshomaru", "Renji",
        ]

        let mangaSurnames: [String] = [
            "Uzumaki", "Kurosaki", "Son", "Monkey D.", "Uchiha",
            "Brief", "Yagami", "Elric", "Yeager", "Freecss",
            "Taisho", "Lamperouge", "Saitama", "Spiegel", "Ketchum",
            "Ryuk", "Ichimaru", "Himura", "Haruno", "Hyuga",
            "Ackerman", "Brief", "Kuchiki", "Scarlet", "Arlong",
            "Rockbell", "Amane", "Holo", "Yuuki", "Gasai",
            "Gildarts", "Hawkeye", "Kudo", "Keneki", "Urameshi",
            "Higurashi", "Hatake", "Joestar", "Black", "Agatsuma",
            "Sakata", "Kurapika", "Kamado", "Taisho", "Abarai",
        ]

        
        let randomIndex1 = Int.random(in: 0..<mangaSurnames.count)
        let randomNom = mangaSurnames[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<mangaNames.count)
        let randomPrenom = mangaNames[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
    }
    // Marvel
    //@IBOutlet weak var marvelButton: UIButton!
    @IBAction func marvelButton(_ sender: UIButton) {
        
        let marvelNames = [
            "Iron", "Peter", "Tony", "Captain", "Steve",
            "Bruce", "Black", "Natasha", "Clint", "Thor",
            "Hulk", "Hawkeye", "Wolverine", "Logan", "Deadpool",
            "Wade", "Doctor", "Stephen", "Black", "T'Challa",
            "Scarlet", "Wanda", "Vision", "Captain", "Carol",
            "Thanos", "Loki", "Magneto", "Professor", "Charles",
            "Jean", "Cyclops", "Daredevil", "Matt", "Jessica",
            "Luke", "Winter", "Bucky", "Bouffon-Vert", "Norman",
            "Mystique"
        ]

        let marvelSurnames = [
            "Man", "Parker", "Man", "Stark", "America",
            "Rogers", "Banner", "Widow", "Romanoff", "Barton",
            "Wilson", "Strange", "Panther", "T'Challa", "Witch",
            "Maximoff", "Vision", "Marvel", "Danvers", "X",
            "Xavier", "Grey", "Summers", "Devil", "Murdock",
            "Jones", "Cage", "Soldier", "Barnes", "Osborn"
        ]

        
        let randomIndex1 = Int.random(in: 0..<marvelSurnames.count)
        let randomNom = marvelSurnames[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<marvelNames.count)
        let randomPrenom = marvelNames[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
    }
    // Game Of Thrones
    @IBAction func thronesButton(_ sender: UIButton) {
        
        let thronesNames = [
            "Jon", "Daenerys", "Arya", "Tyrion", "Sansa",
            "Robb", "Cersei", "Jaime", "Bran", "Theon",
            "Margaery", "Jorah", "Hodor", "Brienne", "Davos",
            "Melisandre", "Podrick", "Oberyn", "Ygritte", "Ramsay",
            "Samwell", "Bronn", "Shae", "Gilly", "Grey",
            "Missandei", "Tormund", "Tommen", "Ellaria", "Meera",
            "Euron", "Gendry", "Lyanna", "Viserys", "Mance",
            "Olenna", "Walder", "Loras", "Roose", "Renly",
            "Myrcella", "Rhaegar", "Osha", "Joffrey", "Catelyn",
            "Khal", "Jaqen", "Shireen","Rickon", "Karsi"
        ]
        
        let thronesSurnames = [
            "Stark", "Lannister", "Targaryen", "Baratheon", "Greyjoy",
            "Tyrell", "Martell", "Bolton", "Mormont", "Tarly",
            "Clegane", "Tully", "Arryn", "Frey", "Karstark",
            "Umber", "Dayne", "Glover", "Hornwood", "Manderly",
            "Reed", "Baelish", "Seaworth", "Flint", "Connington",
            "Forrester", "Glenmore", "Hill", "Lefford", "Locke",
            "Mazin", "Norcross", "Oakheart", "Payne", "Rogers",
            "Ryswell", "Stokeworth", "Tollett", "Vance", "Waters",
            "Wendwater", "Xho", "Yarwyck", "Zollo", "Blackmont",
            "Cassel", "Estermont", "Grafton", "Harlaw"
        ]

        let randomIndex1 = Int.random(in: 0..<thronesSurnames.count)
        let randomNom = thronesSurnames[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<thronesNames.count)
        let randomPrenom = thronesNames[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo
    }
    
    
    // Label du pseudo généré
    @IBOutlet weak var pseudoLabel: UILabel!
   
}

