// Superclass (Parent class)
class Vehicle {
  String brand;
  int year;

  // Constructor
  Vehicle(this.brand, this.year);

  // Method to display info
  void displayInfo() {
    print("Brand: $brand, Year: $year");
  }
}

// Subclass (Child class) that inherits from Vehicle
class Car extends Vehicle {
  String model;

  // Constructor using 'super' to initialize the parent class properties
  Car(String brand, int year, this.model) : super(brand, year);

  // Overriding the method from the parent class
  @override
  void displayInfo() {
    super.displayInfo(); // Calls the method from the superclass
    print("Model: $model");
  }
}

// Main function to test the inheritance
void main() {
  Car myCar = Car("Toyota", 2022, "Corolla");
  myCar.displayInfo(); // Output: Brand: Toyota, Year: 2022, Model: Corolla
}
