// void main() {
//   var house = House(
//       noOfWindow: 5, noOfDoors: 2, typeOfWals: 'POP', typeOfRoof: 'Breaks');
//   house.printData();

//   var house2 = House(
//       noOfWindow: 10, noOfDoors: 4, typeOfWals: 'POP', typeOfRoof: 'Breaks');
//   house2.printData();
// }
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
  house2.printData(); // This will print the same values as house1 since it's the same instance

  // Verify that both instances are the same
  print(house1 == house2); // Output: true
}



class House {
  int noOfWindow = 0;
  int noOfDoors = 0;
  String typeOfWals = 'Not choosen yet';
  String typeOfRoof = 'Not choosen yet';

  House({
    required this.noOfWindow,
    required this.noOfDoors,
    required this.typeOfWals,
    required this.typeOfRoof,
  });
  void printData() {
    print('''
    No of Window  = $noOfWindow
    No of Doors = $noOfDoors
    Type of Wals = $typeOfWals
    Type of Roof = $typeOfRoof''');
  }
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

