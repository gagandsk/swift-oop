class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "current speed is \(currentSpeed)"
    }
    
    func makeNoise() {
        print("makeNoise")
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

//'Bicycle' hereda de 'Vehicle'
class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print(bicycle.description)

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
tandem.hasBasket = true

print(tandem.description)

class Car : Vehicle{
    enum KindOfCar{
    case electric, combustion
    }
    
    var kindOfCar = KindOfCar.self
    var maxSpeed = 0.0
}

class ElectricCar : Car{
    var autonomy = 0.0
}

class CombustionCar : Car{
    var performance = 0.0
}

let electricCar = ElectricCar()
electricCar.kindOfCar.electric
electricCar.maxSpeed = 220
electricCar.autonomy = 450

let combustionCar = CombustionCar()
combustionCar.kindOfCar.combustion
combustionCar.maxSpeed = 200
combustionCar.performance = 8
