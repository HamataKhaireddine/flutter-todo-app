import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  
  List todoList= [];

  //reference our box
  final _myBox= Hive.box('mybox');

  //will have 3 methods:

  //run this if 1st time Ever opening this app
  void createInitialData(){

    //default tasks
    todoList = [
      ["Code App", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from the database
  void loadData(){
    todoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase(){
    _myBox.put("TODOLIST", todoList);
  }
}