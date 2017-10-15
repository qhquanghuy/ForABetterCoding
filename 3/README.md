## Problem
Assume that you have RentalCar data structure like this:
```swift
struct Car {
  let brand: String
  let price: Double
  let seats: Int
  ...
}
struct RentalCar {
  let car: Car
  let rentalPrice: Double
  let times: Int
  let profit: Double // profit = rentalPrice * times
  ...
}
let rentalCars = [
  RentalCar(car: Car(brand: "audi", price: 25000, seats: 4), rentalPrice: 25, times: 1000),
  RentalCar(car: Car(brand: "honda", price: 8000, seats: 4), rentalPrice: 25, times: 10000),
  RentalCar(car: Car(brand: "honda", price: 15000, seats: 6), rentalPrice: 15, times: 1000),
  RentalCar(car: Car(brand: "audi", price: 50000, seats: 4), rentalPrice: 50, times: 800),
  RentalCar(car: Car(brand: "honda", price: 8000, seats: 6), rentalPrice: 25, times: 15000),
  RentalCar(car: Car(brand: "toyota", price: 5000, seats: 4), rentalPrice: 25, times: 15000),
  RentalCar(car: Car(brand: "audi", price: 30000, seats: 4), rentalPrice: 25, times: 1200),
]
```
How could you sort rentalCars array in order like: car brand ASC then car price DESC then profit DESC.
The result should look like this:
```swift
let sortedRentalCars = [
  RentalCar(car: Car(brand: "audi", price: 50000, seats: 4), rentalPrice: 50, times: 800),
  RentalCar(car: Car(brand: "audi", price: 30000, seats: 4), rentalPrice: 25, times: 1200),
  RentalCar(car: Car(brand: "audi", price: 25000, seats: 4), rentalPrice: 25, times: 1000),
  RentalCar(car: Car(brand: "honda", price: 15000, seats: 6), rentalPrice: 15, times: 1000),
  RentalCar(car: Car(brand: "honda", price: 8000, seats: 6), rentalPrice: 20, times: 15000),
  RentalCar(car: Car(brand: "honda", price: 8000, seats: 4), rentalPrice: 25, times: 10000),
  RentalCar(car: Car(brand: "toyota", price: 5000, seats: 4), rentalPrice: 25, times: 15000),
]
```
You can sort in whatever order you want.
Give it a try!
