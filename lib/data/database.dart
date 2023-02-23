import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // Reference our box
  final _myBox = Hive.box('mybox');

  // Run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Buy a flight ticket", false],
      ["Acheter un billet d'avion", false],
    ];
  }

  // Load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
