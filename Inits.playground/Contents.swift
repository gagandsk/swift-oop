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

let q1 = SurveyQuestion(text: "Pregunta ?")
q1.ask()
q1.response = "Si"
