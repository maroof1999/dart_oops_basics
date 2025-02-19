// An interface is a contract that defines the signature of the functionality.
// An interface can have methods and properties, but they do not contain any implementation.

// Define an interface
abstract class Engine {
  void startEngine();
}

// Define another interface
abstract class Wheels {
  void move();
}

// Implement multiple interfaces in a class
class Car implements Engine, Wheels {
  @override
  void startEngine() {
    print("Car's engine started...");
  }

  @override
  void move() {
    print("Car is moving...");
  }
}

void main() {
  Car myCar = Car();
  myCar.startEngine();
  myCar.move();
}
