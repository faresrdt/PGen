//
//  PGen.swift
//  
//
//  Created by Fares Ali Bouaouina on 16/08/2023.
//

import Foundation


// Énumération des origines possibles du pseudo
enum Origin: String {
    case african
    case ameridian
    case arabic
    case asian
    case british
    case french
    case latino
}


// Création du pseudo aléatoire
class Pseudo {
    var maleNames: [String] // Prénoms masculins
    var femaleNames: [String] // Prénoms féminins
    var surname:[String] // Nom du pseudo
    var origin:Origin // Origine choisie pour la création du pseudo

    // Initialisation du nouveau pseudo
    init(maleNames: [String], femaleNames: [String], surname: [String], origin: Origin) {
            self.maleNames = maleNames
            self.femaleNames = femaleNames
            self.surname = surname
            self.origin = origin
    }
    
    // Fonction pour générer un pseudo
    func generatePseudo(isMale: Bool) -> String {
            let selectedNames = isMale ? maleNames : femaleNames
            let randomName = selectedNames.randomElement() ?? ""
            let randomSurname = surname.randomElement() ?? ""
            return "\(randomName)_\(randomSurname)"
    }
}

// Classe fille pour différentes origines
class CustomPseudo: Pseudo {
    init(origin: Origin) {
        switch origin {
        case .african:
            let maleNames = [
                "Kwame", "Kwasi", "Kwabena", "Kwaku", "Yaw",
                "Kofi", "Kweku", "Kobby", "Kojo", "Kobina",
                "Amir", "Ahmed", "Mohammed", "Ibrahim", "Omar",
                "Said", "Malick", "Mamadou", "Abdoulaye", "Moussa",
                "Cheikh", "Samba", "Lamine", "Ousmane", "Sadio",
                "Diallo", "Traoré", "Kouyaté", "Koné", "Keita",
                "Touré", "Cissé", "Sanogo", "Diop", "Ndiaye",
                "Thiam", "Bâ", "Dramé", "Sylla", "Sow",
                "Cissoko", "Dembélé", "Fofana", "Doumbia", "Tandia",
                "Diakhité", "Bakayoko", "Diarra", "Toure", "Sidibe"
            ]
            let femaleNames = [
                "Amina", "Fatima", "Khadija", "Zainab", "Hafsa",
                "Mariam", "Aicha", "Safiya", "Zahra", "Layla",
                "Nadia", "Sanaa", "Amina", "Halima", "Samia",
                "Djamila", "Kadiatou", "Ramatoulaye", "Diouma", "Nafi",
                "Nene", "Sokhna", "Kine", "Awa", "Fatou",
                "Kadija", "Aïssatou", "Bineta", "Adama", "Maimouna",
                "Koumba", "Yacine", "Ndeye", "Rokhaya", "Seynabou",
                "Nafissatou", "Khady", "Aïcha", "Ramatou", "Mariama",
                "Djenaba", "Khadidiatou", "Aïssata", "Aminata", "Nana",
                "Fanta", "Bintou", "Kadia", "Aïcha", "Sira"
            ]
            let surnames = [
                "Diop", "Traoré", "Sow", "Camara", "Ndiaye",
                "Toure", "Koné", "Diallo", "Kouyaté", "Cissé",
                "Keita", "Dramé", "Bamba", "Sylla", "Kante",
                "Fofana", "Sangaré", "Kamara", "Yao", "Ouedraogo",
                "Gueye", "Mbenga", "Mugabe", "Anyanwu", "Azikiwe",
                "Ghali", "Jelani", "Kamau", "Nwankwo", "Okafor",
                "Onyeka", "Osagie", "Uzoma", "Chukwu", "Okonkwo",
                "Abdullahi", "Ahmed", "Fahd", "Ibrahim", "Saleh",
                "Mahmoud", "Nasser", "Suleiman", "Tamrat", "Kebede",
                "Mekonnen", "Tadesse", "Tekle", "Zewde", "Girma"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        case .ameridian:
            let maleNames = [
                "Bison", "Coyote", "Cerf", "Wapiti", "Élan",
                "Ours", "Raton", "Moufette",
                "Renard", "Loup", "Lynx", "Lion",
                "Pygargue", "Aigle", "Balbuzard", "Buse", "Urubu",
                "Oie", "Canard", "Merle", "Geai",
                "Tamia", "Castor", "Blaireau",
                "Alligator", "Lapin", "Écureuil", "Vison",
                "Martre", "Loutre", "Porc-Épic",
                "Lièvre", "Coyote"
            ]
            let femaleNames = maleNames
            let surnames = [
                "Givré", "Énervé", "Flamboyant", "Heureux", "Fort",
                "Étourdi", "Mystérieux", "Triste", "Vif", "Serein",
                "Intrigué", "Fier", "Curieux", "Calme", "Déterminé",
                "Joyeux", "Vulnérable", "Effrayé", "Paisible", "Zélé",
                "Sensible", "Indifférent", "Agressif", "Vibrant", "Déçu",
                "Solitaire", "Passionné", "Insouciant", "Mélancolique", "Prudent",
                "Hésitant", "Courageux", "Apathique", "Espoir", "Excité",
                "Enthousiaste", "Craintif", "Cruel", "Timide", "Jaloux",
                "Satisfait", "Émerveillé", "Détendu", "Pensif", "Séduisant",
                "Sensible", "Sérieux", "Sincère", "Vif", "Vigilant",
                "Volontaire", "Zélé", "Aventureux", "Innocent", "Impatient"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        case .arabic:
            let maleNames = [
                "Mohamed", "Ahmed", "Ali", "Omar", "Adam",
                "Youssef", "Khaled", "Ibrahim", "Hamza", "Hassan",
                "Abdullah", "Amir", "Karim", "Fadi", "Mahmoud",
                "Nadir", "Nasir", "Rami", "Sami", "Tariq",
                "Wael", "Yasin", "Zakariya", "Fahd", "Jamal",
                "Farid", "Jalal", "Kamal", "Malik", "Rashid",
                "Yahya", "Zayd", "Hussein", "Adnan", "Nizar",
                "Osama", "Salim", "Tarek", "Walid", "Ziad",
                "Imad", "Jibril", "Mazen", "Naji", "Qasim",
                "Rafik", "Saad", "Taif", "Umar", "Wassim"
            ]
            let femaleNames = [
                "Amina", "Fatima", "Leila", "Nour", "Sara",
                "Lina", "Amira", "Rana", "Yasmine", "Hana",
                "Zahra", "Rima", "Safia", "Mona", "Dalia",
                "Nadia", "Roula", "Samia", "Farida", "Layla",
                "Selma", "Nada", "Ghada", "Maya", "Saida",
                "Karima", "Hayat", "Wafa", "Houda", "Rasha",
                "Zainab", "Rabia", "Warda", "Hind", "Samiya",
                "Fadia", "Najwa", "Sabrina", "Faten", "Imane",
                "Naima", "Inas", "Nasrin", "Hanan", "Dina",
                "Loubna", "Raja", "Meryem", "Jihane", "Nabila"
            ]
            let surnames = [
                "Abdelaziz", "Al-Mansoori", "El-Masri", "Ibrahim", "Al-Ahmad",
                "Al-Dawood", "Khalifa", "Mahmoud", "Salem", "Al-Murad",
                "Al-Husseini", "Al-Hashemi", "Ali", "Hassan", "Al-Mohamed",
                "Saeed", "Sulaiman", "Al-Khalil", "Al-Badr", "Al-Jaber",
                "Al-Mansoori", "Al-Mazrouei", "Al-Nasser", "Al-Rashid", "Fahd",
                "Al-Sabah", "Al-Saud", "Al-Shamsi", "Al-Yousef", "Al-Zahrani",
                "Al-Zayed", "Al-Zuhairi", "Jaber", "Kazim", "Mahmoud",
                "Mansour", "Omar", "Qureshi", "Rahman", "Salim",
                "Shafi", "Shah", "Sheikh", "Tariq", "Yasin",
                "Zahra", "Zayd", "Zubair", "Rouhani", "Eid"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        case .asian:
            let maleNames = [
                "Takashi", "Hiroshi", "Yuki", "Kazuki", "Haruki",
                "Ryota", "Satoshi", "Kenji", "Shinji", "Daiki",
                "Tatsuya", "Ryo", "Kaito", "Kento", "Yuta",
                "Haruto", "Taichi", "Takahiro", "Hideaki", "Ryu",
                "Jin", "Sora", "Minho", "Jae-hoon", "Yun-seok",
                "Hyun-woo", "Seung-ho", "Ji-hoon", "Donghae", "Jinwoo",
                "Ji-hwan", "Yong-sik", "Sung-min", "Wei", "Zheng",
                "Chen", "Liang", "Ming", "Jian", "Yuan",
                "Tian", "Feng", "Yong", "Ryota", "Satoshi",
                "Takumi", "Yuto", "Hiroki", "Tomo", "Kazuki"
            ]
            let femaleNames = [
                "Aiko", "Yuki", "Hana", "Miyuki", "Haruka",
                "Sakura", "Emi", "Nana", "Kaori", "Rika",
                "Akiko", "Ai", "Mai", "Eri", "Yui",
                "Yumi", "Mei", "Aya", "Kana", "Mio",
                "Misaki", "Asuka", "Rin", "Reina", "Yuna",
                "Hikari", "Nao", "Saki", "Mana", "Nozomi",
                "Yukiko", "Yoshiko", "Megumi", "Kyoko", "Keiko",
                "Yoko", "Tomoko", "Naoko", "Kumiko", "Kazuko",
                "Miyoko", "Fumiko", "Yasuko", "Hiroko", "Mariko",
                "Ryoko", "Sachiko", "Haruko", "Noriko", "Chiyoko"
            ]
            let surnames = [
                "Kim", "Lee", "Park", "Choi", "Jeong",
                "Hwang", "Kang", "Jang", "Yoon", "Cho",
                "Song", "Yoo", "Han", "Im", "Oh",
                "Jin", "Moon", "Lim", "Yang", "Hong",
                "Ahn", "Shin", "Kwon", "Chung", "Ko",
                "Ryu", "Kawaguchi", "Suzuki", "Takahashi", "Yamamoto",
                "Tanaka", "Watanabe", "Ito", "Sato", "Nakamura",
                "Kobayashi", "Yoshida", "Yamada", "Sasaki", "Yamaguchi",
                "Matsumoto", "Inoue", "Kimura", "Hayashi", "Shimizu",
                "Mori", "Fujita", "Ikeda", "Hashimoto", "Saito"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        case .british:
            let maleNames = [
                "William", "James", "John", "David", "Michael",
                "Daniel", "Andrew", "Stephen", "Thomas", "Matthew",
                "Christopher", "Joseph", "Robert", "Richard", "Paul",
                "Peter", "Edward", "Patrick", "Brian", "Kevin",
                "George", "Alan", "Mark", "Anthony", "Simon",
                "Jonathan", "Philip", "Francis", "Oliver", "Nigel",
                "Barry", "Liam", "Connor", "Sean", "Declan",
                "Shane", "Eoin", "Ciaran", "Finn", "Rory",
                "Kieran", "Cormac", "Dylan", "Aidan", "Niall",
                "Owen", "Colin", "Gavin", "Eamonn", "Malachy"
            ]
            let femaleNames = [
                "Emma", "Sophie", "Olivia", "Emily", "Grace",
                "Lucy", "Alice", "Jessica", "Charlotte", "Ella",
                "Amelia", "Hannah", "Mia", "Lily", "Anna",
                "Isabella", "Sarah", "Zoe", "Rebecca", "Amy",
                "Rachel", "Laura", "Caitlin", "Katie", "Emma",
                "Aoife", "Sophia", "Grace", "Eva", "Chloe",
                "Aoibhín", "Niamh", "Ciara", "Molly", "Ellie",
                "Ava", "Isabelle", "Caoimhe", "Fiona", "Roisin",
                "Siobhan", "Orla", "Laoise", "Saoirse", "Clodagh",
                "Áine", "Aoibheann", "Aoibhe", "Sorcha", "Grainne"
            ]
            let surnames = [
                "Smith", "Jones", "Taylor", "Brown", "Wilson",
                "Evans", "Thomas", "Roberts", "Johnson", "Lewis",
                "Murphy", "O'Sullivan", "O'Connor", "Walsh", "Kelly",
                "Byrne", "Ryan", "Doyle", "MacDonald", "Campbell",
                "Murray", "Anderson", "Clark", "Carter", "Davis",
                "Thompson", "Moore", "Hughes", "Allen", "Baker",
                "Harris", "Davies", "Mitchell", "Adams", "Miller",
                "Wright", "Ward", "Martin", "Cox", "Collins",
                "Young", "Stewart", "Bell", "Walker", "White",
                "Jackson", "Hill", "Cook", "Robinson", "Hall"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        case .french:
            let maleNames = [
                "Louis", "Lucas", "Hugo", "Gabriel", "Arthur",
                "Paul", "Léo", "Jules", "Thomas", "Raphaël",
                "Ethan", "Noah", "Enzo", "Mathis", "Liam",
                "Adam", "Antoine", "Maxime", "Matéo", "Nathan",
                "Luc", "Paul", "Alexandre", "Théo", "Tom",
                "Timéo", "Tristan", "Victor", "Oscar", "Baptiste",
                "Simon", "Éthan", "Noé", "Édouard", "Rémi",
                "Gaspard", "Louis", "Léon", "Félix", "Augustin",
                "Jules", "Côme", "Émile", "Alexis", "Marcel",
                "Pierre", "Romain", "Xavier", "Vincent", "Bruno"
            ]
            let femaleNames = [
                "Emma", "Léa", "Manon", "Chloé", "Camille",
                "Lola", "Sarah", "Clara", "Louise", "Zoé",
                "Jade", "Anna", "Lina", "Juliette", "Léna",
                "Léna", "Léa", "Lucie", "Alice", "Rose",
                "Émilie", "Sarah", "Lilou", "Eva", "Charlotte",
                "Lou", "Inès", "Louane", "Célia", "Anaïs",
                "Romane", "Mia", "Mila", "Manon", "Nina",
                "Elsa", "Lola", "Julia", "Éléna", "Maëlle",
                "Éva", "Ambre", "Margot", "Agathe", "Inès",
                "Océane", "Louise", "Capucine", "Lison", "Héloïse"
            ]
            let surnames = [
                "Martin", "Bernard", "Thomas", "Petit", "Dubois",
                "Robert", "Richard", "Roux", "Durand", "Lefebvre",
                "Moreau", "Simon", "Laurent", "Michel", "Garcia",
                "Lefèvre", "David", "André", "Girard", "Bonnet",
                "Dupont", "Bertrand", "Lambert", "Fontaine", "Rousseau",
                "Vincent", "Fournier", "Morel", "Giraud", "Leroy",
                "Lopez", "Martinez", "Faure", "Mercier", "Dupuy",
                "Cohen", "Gauthier", "Morin", "Henry", "Dumont",
                "Meunier", "Robin", "Noël", "Chevalier", "Leclerc",
                "Gauthier", "Dufour", "Masson", "Joly", "Dumont"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        case .latino:
            let maleNames = [
                "Santiago", "Mateo", "Sebastián", "Matías", "Nicolás",
                "Diego", "Samuel", "Benjamín", "Daniel", "Luis",
                "Alejandro", "Gabriel", "Joaquín", "Juan", "Andrés",
                "Emiliano", "Carlos", "Fernando", "Leonardo", "Hugo",
                "Adrián", "Miguel", "Rafael", "José", "David",
                "Antonio", "Felipe", "Ricardo", "Ángel", "Eduardo",
                "Javier", "Mario", "Alex", "Daniel", "Juan Pablo",
                "Rodrigo", "Ricardo", "Esteban", "Víctor", "César",
                "Raul", "Pedro", "Raúl", "Manuel", "Jesús",
                "Marco", "Héctor", "Fernando", "Martín", "Jorge"
            ]
            let femaleNames = [
                "Isabella", "Sofía", "Valentina", "Camila", "Valeria",
                "Lucía", "Emma", "Mariana", "Sara", "Daniela",
                "Elena", "Gabriela", "María", "Victoria", "Ana",
                "Laura", "Natalia", "Alicia", "Carolina", "Clara",
                "Fernanda", "Adriana", "Regina", "Bianca", "Alejandra",
                "Julieta", "Ximena", "Amanda", "Nayeli", "Andrea",
                "Cecilia", "Rosa", "Antonia", "Paula", "Liliana",
                "Luisa", "Catalina", "Eva", "Patricia", "Marina",
                "Jimena", "Marisol", "Mónica", "Valerie", "Lorena",
                "Diana", "Paola", "Carmen", "Angélica", "Pilar"
            ]
            let surnames = [
                "García", "Martínez", "López", "Rodríguez", "Hernández",
                "Pérez", "González", "Ramírez", "Flores", "Torres",
                "Rivera", "Vásquez", "Rojas", "Reyes", "Morales",
                "Castillo", "Fernández", "Sánchez", "Romero", "Alvarez",
                "Díaz", "Ruiz", "Ortega", "Silva", "Cruz",
                "Mendoza", "Chávez", "Méndez", "Guerrero", "Álvarez",
                "Gómez", "Guzmán", "Ramos", "Vega", "Munoz",
                "Paredes", "Jiménez", "Salazar", "Gallardo", "Soto",
                "Herrera", "Cortez", "Castañeda", "Villanueva", "Campos",
                "Montes", "Orozco", "Vargas", "Mejía", "Lara"
            ]
            super.init(maleNames: maleNames, femaleNames: femaleNames, surname: surnames, origin: origin)
        }
    }
}

// Utilisation de l'énumération pour générer des pseudonymes
let selectedOrigin: Origin = .french // Choisis l'origine souhaitée
let customPseudo = CustomPseudo(origin: selectedOrigin)
let generatedMaleCustomPseudo = customPseudo.generatePseudo(isMale: true)
let generatedFemaleCustomPseudo = customPseudo.generatePseudo(isMale: false)
print("Pseudo masculin personnalisé généré : \(generatedMaleCustomPseudo)")
print("Pseudo féminin personnalisé généré : \(generatedFemaleCustomPseudo)")


// PARTIE INTERACTIVE

// L'utilisateur choisi l'origine pour son pseudo
func originChoice() -> Origin? {
    print("Choisissez une origine parmi les suivantes:")
    print("1. Africain")
    print("2. Amérindien")
    print("3. Arabe")
    print("4. Asiatique")
    print("5. Britannique")
    print("6. Français")
    print("7. Latino")
    print("0. Quitter")
    
    if let choice = readLine(), let numericChoice = Int(choice) {
        switch numericChoice {
        case 1: return .african
        case 2: return .ameridian
        case 3: return .arabic
        case 4: return .asian
        case 5: return .british
        case 6: return .french
        case 7: return .latino
        case 0: return nil
        default: return nil
        }
    }
    
    return nil
}


// L'utilisateur choisi le genre pour son pseudo
func genderChoice() -> Bool? {
    print("Choisissez un genre:")
    print("1. Masculin")
    print("2. Féminin")
    
    if let choice = readLine(), let numericChoice = Int(choice) {
        switch numericChoice {
        case 1: return true
        case 2: return false
        default: return nil
        }
    }
    
    return nil
}

// Fonction pour executer le programme
func main() {
    while true {
        print("=== Générateur de Pseudo ===")
        
        if let origin = originChoice() {
            if origin == .arabic || origin == .asian {
                print("Désolé, cette origine n'est pas prise en charge pour cette démo.")
                continue
            }
            
            if let genre = genderChoice() {
                let customPseudo = CustomPseudo(origin: origin)
                let isMale = genre
                
                let generatedCustomPseudo = customPseudo.generatePseudo(isMale: isMale)
                let genreLabel = isMale ? "masculin" : "féminin"
                let origineLabel = origin.rawValue.capitalized
                
                print("Pseudo \(genreLabel) \(origineLabel) généré : \(generatedCustomPseudo)")
            } else {
                print("Choix de genre non valide.")
            }
        } else {
            print("Au revoir!")
            break
        }
    }
}

main()
