void main() {
  // Get the singleton instance
  MyHouse house1 = MyHouse();

  // Set data
  house1.setData(
    noOfWindow: 4,
    noOfDoors: 2,
    typeOfWals: 'Brick',
    typeOfRoof: 'Concrete',
  );

  // Print data
  house1.printData();

  // Get another instance
  MyHouse house2 = MyHouse();

  // Print data from the second instance
  house2
      .printData(); // This will print the same values as house1 since it's the same instance

  // Verify that both instances are the same
  print(house1 == house2); // Output: true
}

class MyHouse {
  static final MyHouse _instance = MyHouse._internal();

  int noOfWindow = 0;
  int noOfDoors = 0;
  String typeOfWals = 'Not chosen yet';
  String typeOfRoof = 'Not chosen yet';

  // Private constructor
  // To prevent the creation of instances from outside the class
  MyHouse._internal();

  // Factory constructor to return the same instance
  // whenever a new instance is created
  // This is a singleton pattern
  // It ensures that only one instance of the class is created
  factory MyHouse() {
    return _instance;
  }

  void setData({
    required int noOfWindow,
    required int noOfDoors,
    required String typeOfWals,
    required String typeOfRoof,
  }) {
    this.noOfWindow = noOfWindow;
    this.noOfDoors = noOfDoors;
    this.typeOfWals = typeOfWals;
    this.typeOfRoof = typeOfRoof;
  }

  void printData() {
    print('''
    No of Window  = $noOfWindow
    No of Doors = $noOfDoors
    Type of Wals = $typeOfWals
    Type of Roof = $typeOfRoof''');
  }
}
