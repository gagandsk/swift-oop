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
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
