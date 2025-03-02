class House {
  int _noOfWindow = 0;
  int _noOfDoors = 0;
  String _typeOfWals = 'Not choosen yet';
  String _typeOfRoof = 'Not choosen yet';

  House({
    required int noOfWindow,
    required int noOfDoors,
    required String typeOfWals,
    required String typeOfRoof,
  })  : _noOfWindow = noOfWindow,
        _noOfDoors = noOfDoors,
        _typeOfWals = typeOfWals,
        _typeOfRoof = typeOfRoof;
  int get noOfWindow => _noOfWindow;
  int get noOfDoors => _noOfDoors;
  String get typeOfWals => _typeOfWals;
  String get typeOfRoof => _typeOfRoof;

  void set noOfWindow(int noOfWindow) => _noOfWindow = noOfWindow;

  void set noOfDoors(int noOfDoors) => _noOfDoors = noOfDoors;

  void set typeOfWals(String typeOfWals) => _typeOfWals = typeOfWals;

  void set typeOfRoof(String typeOfRoof) => _typeOfRoof = typeOfRoof;

  void printData() {
    print('''
    No of Window  = $_noOfWindow
    No of Doors = $_noOfDoors
    Type of Wals = $_typeOfWals
    Type of Roof = $_typeOfRoof''');
  }
}
