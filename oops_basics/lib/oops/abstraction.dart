// An abstract class is a class that cannot be instantiated and is used to define the structure of the child classes.
// Abstract classes can have abstract methods (methods without a body) that must be implemented by the child classes.
// Abstract classes can also have concrete methods (methods with a body) that can be used by the child classes.
// Abstract methods are created using the abstract keyword.
// Abstract methods must be implemented by the child classes.
// Concrete methods can be used by the child classes without any changes.
// Example: Abstract class Vehicle with an abstract method startEngine() and a concrete method displayInfo().
// Example: Concrete class Car extending the abstract class Vehicle and implementing the abstract method startEngine().

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
//we follow this approach to hide the implementation details from the user and only show the necessary details.