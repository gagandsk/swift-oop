class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) ->Room{
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    var address: Address?
    
    func printNumberOfRooms(){
        print("Total rooms: \(numberOfRooms)")
    }
}

class Room{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber), \(street)"
        } else if let buildingName = buildingName {
            return buildingName
        } else {
            return nil
        }
    }
}

let edgar = Person()

if let roomCount = edgar.residence?.numberOfRooms {
    print("La casa de edgar tiene \(roomCount) habitaciones")
} else {
    print("Edgar no tiene casa")
}

func createAddress() -> Address {
    print("La funcion ha sido llamada")
    
    let someAddress = Address()
    someAddress.buildingNumber = "10"
    someAddress.buildingName = "The Metropolitan"
    
    return someAddress
}

edgar.residence?.address = createAddress()
edgar.residence?.printNumberOfRooms()

if edgar.residence?.printNumberOfRooms() != nil {
    print("He podido obtener el número de habitaciones")
}else{
    print("No ha sido possible saber el número de habitaciones")
}

if(edgar.residence?.address = createAddress()) != nil {
    print("Ha sido possible configurar la dirección de Edgar")
} else{
    print("Seguimos sin saber donde vive Edgar")
}

if let firstRoomName = edgar.residence?[0].name {
    print("La primera habitación es de \(firstRoomName)")
}else{
    print("La primera habitación no sabemos de quien es")
}

edgar.residence?[0] = Room(name: "Bathroom") //nil
let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Living Room"))
edgarHouse.rooms.append(Room(name: "Kitchen"))
edgar.residence = edgarHouse

if let firstRoomName = edgar.residence?[0].name {
    print("La primera habitación es \(firstRoomName)")
}else{
    print("La primera habitación no sabemos de quien es")
}
