struct Fahrenheit {
    var temperature: Double
    init(){
        self.temperature = 32.0
    }
}

var f1 = Fahrenheit()
struct Celsius {
    var temperatue: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        self.temperatue = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperatue = kelvin - 273.15
    }
    
    // '_' es una etiqueta, con esto no me hará falta indicarle el nombre en el parametro
    init(_ celsius: Double) {
        self.temperatue = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)
let green = Color(red: 0, green: 1, blue: 0)

let bodyTemperature = Celsius(37)

class SurveyQuestion {
    var text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}

let q1 = SurveyQuestion(text: "Como te llamas?")
q1.ask()
q1.response = "Gagan"

let q2 = SurveyQuestion(text: "Cuántos años tienes?")
q2.ask()
q2.response = "25"


//constructores

//Designado -> Designado super clase
//Conveniencia -> Otro init de la misma clase
//El último init que se llame siempre debe ser designado


class Vehicle {
    var numerOfWheels = 0
    var description: String {
        return "Total ruedas: \(numerOfWheels)"
    }
}

let vehicle = Vehicle()
print(vehicle.description)

class Bicycle: Vehicle {
    //esto seria un inicializador 'Designado', porque estoy sobreescriviendo al del padre (Vehicle)
    override init() {
        //aqui estoy llamando al init del padre
        super.init()
        numerOfWheels = 2
    }
}

let bicycle = Bicycle()
print(bicycle.description)

class Hoverboard: Vehicle {
    var color: String
    //inicializador de 'Conveniencia'
    init(color: String) {
        self.color = color
        //aquí se llama implíticamente a super.init()
    }
    override var description: String{
        return "\(super.description) en el color \(self.color)"
    }
}

let hoverboard = Hoverboard(color: "Silver")
print(hoverboard.description)


enum TemperatureUnit {
    case kelvin, fahrenheit, celsius
    
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "F":
            self = .fahrenheit
        case "C":
            self = .celsius
        default:
            return nil
        }
    }
}

let someUnitK = TemperatureUnit(symbol: "K")
let someUnitF = TemperatureUnit(symbol: "F")
let someUnitC = TemperatureUnit(symbol: "C")
let someUnitX = TemperatureUnit(symbol: "X")


class Product{
    let name: String
    //indicamos un '?' porque en este caso, el 'name' nos puede devolver un nulo (nil en swift)
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let someSocks = CartItem(name: "Socks", quantity: 2){
    print("\(someSocks.name): \(someSocks.quantity)")
}
