class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let edgar = Person()
if let roomCount = edgar.residence?.numberOfRooms {
    print("La casa de edgar tiene \(roomCount) habitaciones")
} else {
    print("Edgar no tiene casa")
}

edgar.residence = Residence()

if let roomCount = edgar.residence?.numberOfRooms {
    print("La casa de edgar tiene \(roomCount) habitaciones")
} else {
    print("Edgar no tiene casa")
}
