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
}

let somePoint = Point(x: 4, y: 5)
somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 54)
