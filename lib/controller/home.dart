import 'dart:convert';

import 'package:takeahome/model/unit.dart';

import '../model/room.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http; // Import the http package

// import 'unit.dart';
List<Room> rooms = [
  Room(name: 'name', number: 12, loc: 'pune', bhk: 0.5),
  Room(name: 'name1', number: 13, loc: 'pune1', bhk: 2),
  Room(name: 'name2', number: 14, loc: 'pune', bhk: 2),
  Room(name: 'name3', number: 15, loc: 'pune1', bhk: 1),
  Room(name: 'name4', number: 16, loc: 'pune', bhk: 3),
  Room(name: 'name5', number: 17, loc: 'pune', bhk: 2),
  Room(name: 'name6', number: 18, loc: 'pune1', bhk: 1),
  Room(name: 'name7', number: 19, loc: 'pune', bhk: 1),
  Room(name: 'name8', number: 90, loc: 'pune', bhk: 1),
  Room(name: 'name9', number: 19, loc: 'pune1', bhk: 1.5),
];

List<Room> filterRooms({String? name, int? number, String? loc, double? bhk}) {
  return rooms
      .where((room) => room.number < number!)
      .where((room) => loc == null || room.loc == loc)
      .where((room) => bhk == null || room.bhk == bhk)
      .toList();
  // return [];
}
// Import the Unit model class

class UnitController extends GetxController {
  // RxList to store the list of units
  RxList<Unit> units = RxList<Unit>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchUnits();
    // wing = wings.first;
  }

  // Function to fetch the JSON data and update the units list
  Future<void> fetchUnits() async {
    try {
      // Replace the URL below with the actual API endpoint that provides the JSON data
      final response =
          await http.get(Uri.parse('http://192.168.1.43:8000/home/projects/'));
      if (response.statusCode == 200) {
        // If the request is successful, parse the JSON data and update the units list
        final List<dynamic> jsonData = json.decode(response.body);
        units.value =
            jsonData.map((unitData) => Unit.fromMap(unitData)).toList();
      } else {
        // If the request fails, print the error message
        print('Failed to fetch units: ${response.statusCode}');
      }
    } catch (e) {
      // If an exception occurs, print the error message
      print('Error fetching units: $e');
    }
    update();
  }
}