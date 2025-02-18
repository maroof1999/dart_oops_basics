
/*Dart does not support multiple inheritance (a class inheriting from multiple classes)
 directly. However, you can achieve similar behavior using mixins or interfaces.
*/
// Allows code reuse, easy to implement	Cannot have constructors

//1. Using Mixins (Preferred Approach)

// Mixin 1
mixin Engine {
  void startEngine() {
    print("Engine started...");
  }
}

// Mixin 2
mixin Wheels {
  void move() {
    print("Vehicle is moving...");
  }
}

// Base class
class Vehicle {
  String brand;
  Vehicle(this.brand);

  void showBrand() {
    print("Brand: $brand");
  }
}

// Car class using multiple mixins
class Car extends Vehicle with Engine, Wheels {
  String model;

  Car(String brand, this.model) : super(brand);

  void displayInfo() {
    showBrand();
    print("Model: $model");
    startEngine(); // From Engine mixin
    move();        // From Wheels mixin
  }
}

void main() {
  Car myCar = Car("Toyota", "Corolla");
  myCar.displayInfo();
}