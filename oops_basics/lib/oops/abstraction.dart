// Abstract class
abstract class Vehicle {
  String brand;

  Vehicle(this.brand);

  // Abstract method (does not have a body)
  void startEngine();

  // Concrete method (has a body)
  void displayInfo() {
    print("This is a $brand vehicle.");
  }
}

// Concrete class extending the abstract class
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, this.numberOfDoors) : super(brand);

  // Implementing the abstract method
  @override
  void startEngine() {
    print("$brand car's engine is starting...");
  }

  void showDoors() {
    print("$brand car has $numberOfDoors doors.");
  }
}

void main() {
  // Vehicle v = Vehicle("Toyota"); // Not allowed, can't instantiate abstract class

  Car myCar = Car("Toyota", 4);
  myCar.displayInfo();  // Calling concrete method from abstract class
  myCar.startEngine();  // Calling implemented abstract method
  myCar.showDoors();    // Specific method of Car class
}
