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
    var gear = 1
    enum KindOfCar{
        case electric, combustion
    }
    
    var kindOfCar = KindOfCar.self
    var maxSpeed = 0.0
    override var description: String {
        return super.description + " gear \(gear)"
    }
}

class ElectricCar : Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
    var autonomy = 0.0
}

class CombustionCar : Car{
    var performance = 0.0
}

let normalCar = Car()
normalCar.currentSpeed = 60
normalCar.gear = 4
print(normalCar.description)

let electricCar = ElectricCar()
electricCar.kindOfCar.electric
electricCar.maxSpeed = 220
electricCar.autonomy = 450
electricCar.currentSpeed = 65
print(electricCar.description)

let combustionCar = CombustionCar()
combustionCar.kindOfCar.combustion
combustionCar.maxSpeed = 200
combustionCar.performance = 8


class Train: Vehicle {
    //'final' evita el 'override'
    final var numberofWagons = 0
    override func makeNoise() {
        print("train noise")
    }
}

let train = Train()
train.makeNoise()

tandem.makeNoise()

/*
class Railway: Train {
    override var numberofWagons: Int {
        
    }
}
*/
