//Properties

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//rangeOfFourItems.firstValue = 10

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Datos")
manager.data.append("more data")
manager.importer.filename



//Computed Properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    //Esto es una 'Computed Propertie'
    var center: Point {
        get {
            Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        set {
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
let initialSquareCenter = square.center
square.center = Point(x: 18, y: 4)
print(square.center)

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    
    //Computed Properties de sólo lectura
    var volume: Double {
        return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume
//cuboid.volume = 57.0


//willSet , didSet
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("Numero de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue {
                print("El numero de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

