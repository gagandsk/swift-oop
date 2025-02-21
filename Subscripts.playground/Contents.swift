struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6x3=\(threeTimesTable[6])")

for idx in 0...10 {
    print("\(idx) x 3 = \(threeTimesTable[idx])")
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)


struct Matriz {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int, grid: [Double]) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row>=0 && column >= 0 && row < rows && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
        }
    }
}

var matrix = Matriz(rows: 2, columns: 2, grid: [0.0])
matrix[0,1] = 1.5
matrix[1,0] = 2.5
