class Counter {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        self.count += amount
    }
    func reset() {
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 10)
counter.reset()

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRight(of x: Double) -> Bool {
        // el 'self.x' se refiere a la variable de clarada en la classe, mientras que la segunda 'x' se refiere al parametro de la funcion 'isToTheRight'
        return self.x > x
    }
    
    /*
     En Swift, las estructuras (struct) y enumeraciones (enum) son tipos de valor, lo que significa que sus instancias se copian cuando se asignan o se pasan a funciones. Por defecto, sus métodos no pueden modificar sus propias propiedades. Al marcar un método con la palabra clave mutating, le indicas al compilador que ese método va a modificar (o "mutar") la instancia, permitiéndote cambiar sus propiedades internamente.
     */
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        //self.x += deltaY
        //self.y += deltaY
        Point(x: self.x + deltaX, y:self.y + deltaY)
    }
}

var somePoint = Point(x: 4, y: 5)
//let somePoint = Point(x: 4, y: 5)
somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 54)

somePoint.moveBy(x: 2, y: -3)
somePoint.x = 9

enum DifferentStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
            case .off:
                self = .low
            case .low:
                self = .high
            case .high:
                self = .off
        }
    }
}

var controllerStatis = DifferentStateSwitch.off
controllerStatis.next()
controllerStatis.next()
controllerStatis.next()


