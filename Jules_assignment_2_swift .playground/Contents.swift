

/* Write a simple program that will generate/print a customer email list
formated as: Name: Jane Doe Email: jdoe@gmail.com */

let Custumers = ["Jane Doe" : "jdoe@gmail.com"]

func printCustomerEmailList(Custumers: [String: String]) {
    for (name, email) in Custumers {
        print("Name: \(name) Email: \(email)")
    }
}

printCustomerEmailList(Custumers: Custumers)



/* create a Location struct with x and y coordinates (as we did with the pizza example)
 use the same storeRange from the pizza example as well, 2.5 (change if you like of course)
 create 2 store locations (Location, as we did with the pizza example)
 create a Customer struct that includes the following properties:
 name (String, full name )
 email (String, don't worry about validation for now)
 phone number (String, don't worry about validation for now)
 acceptedNewsletter (Bool)
 location (Location, x and y coordinates, just like the pizza example)
 create an array of customers (Customer, at least 10)
 write a function that takes in a single store location and the collection of customers and prints the email addresses of customers that are within the storeRange (you can use the distance formula from the pizza example)
 (name, email, phone, AcceptedNewsletter)
 */

// Define a struct for representing a location with x and y coordinates
struct Location {
    let x: Double
    let y: Double
}

// Define storeRange constant
let storeRange = 2.5

// Define store locations
let firstStoreLocation = Location(x: 3, y: 3)
let secondStoreLocation = Location(x: 5, y: 5)

// Define a struct for representing a customer
struct Customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

// Define customers
let customers = [
    Customer(name: "Alice", email: "alice@gmail.com", phoneNumber: "1", acceptedNewsletter: true, location: Location(x: 1, y: 2)),
    Customer(name: "Bob", email: "bob@gmail.com", phoneNumber: "2", acceptedNewsletter: false, location: Location(x: 3, y: 4)),
    Customer(name: "Cindy", email: "cindy@gmail.com", phoneNumber: "3", acceptedNewsletter: true, location: Location(x: 5, y: 6)),
    Customer(name: "Dan", email: "dan@gmail.com", phoneNumber: "4", acceptedNewsletter: false, location: Location(x: 7, y: 8)),
    Customer(name: "Yan", email: "yan@gmail.com", phoneNumber: "5", acceptedNewsletter: true, location: Location(x: 4, y: 6)),
    Customer(name: "Yves", email: "yves@gmail.com", phoneNumber: "6", acceptedNewsletter: false, location: Location(x: 8, y: 2)),
    Customer(name: "Lara", email: "lara@gmail.com", phoneNumber: "7", acceptedNewsletter: true, location: Location(x: 7, y: 3)),
    Customer(name: "Denis", email: "denis@gmail.com", phoneNumber: "8", acceptedNewsletter: false, location: Location(x: 6, y: 4)),
    Customer(name: "Mark", email: "mark@gmail.com", phoneNumber: "9", acceptedNewsletter: true, location: Location(x: 5, y: 5)),
    Customer(name: "Donald", email: "donald@gmail.com", phoneNumber: "10", acceptedNewsletter: false, location: Location(x: 4, y: 6))
]

// Function to print email addresses of customers within the storeRange of a given location

func printCustomersInRange(location: Location, customers: [Customer]) {
    for customer in customers {
       
   let distance = ((location.x - customer.location.x) * (location.x - customer.location.x) + (location.x - customer.location.x) * (location.x - customer.location.x)).squareRoot()
 

        if distance <= storeRange {
            print(customer.email)
        }
    }
}

printCustomersInRange(location: firstStoreLocation, customers: customers)
