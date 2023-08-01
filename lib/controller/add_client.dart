import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:takeahome/constants.dart';

import '../model/add_project.dart';

class NewClientController extends GetxController {
  final fromKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController requirementsController = TextEditingController();
  void getOutput() async {
    // AddProject a = AddProject(
    //     area: area.text,
    //     projectName: projectName.text,
    //     projectType: projectType.text,
    //     developerName: developerName.text,
    //     landParcel: double.tryParse(landParcel.text) ?? 0,
    //     landmark: landmark.text,
    //     areaIn: areaIn.text,
    //     waterSupply: waterSupply.text,
    //     lifts: int.tryParse(lifts.text) ?? 0,
    //     floors: int.tryParse(floors.text) ?? 0,
    //     flatsPerFloors: int.tryParse(flatsPerFloors.text) ?? 0,
    //     totalUnit: int.tryParse(totalUnit.text) ?? 0,
    //     availableUnit: int.tryParse(availableUnit.text) ?? 0,
    //     amenities: amenities.text,
    //     parking: parking.text,
    //     longitude: double.tryParse(longitude.text) ?? 0,
    //     latitude: double.tryParse(latitude.text) ?? 0,
    //     transport: transport,
    //     readyToMove: readyToMove,
    //     power: power,
    //     goods: goods,
    //     rera: DateTime(reraYear, reraMonth),
    //     possession: DateTime(developerYear, developerMonth),
    //     contactPerson: contactPerson.text,
    //     contactNumber: int.tryParse(contactNumber.text) ?? 0,
    //     marketValue: ((double.tryParse(marketValue.text) ?? 0) * 10000000).toInt(),
    //     brokerage: double.tryParse(brokerage.text) ?? 0.0,
    //     incentive: int.tryParse(incentive.text) ?? 0,
    //     bhk: double.tryParse(bhk.text) ?? 0.0,
    //     carpetArea: int.tryParse(carpetArea.text) ?? 0,
    //     price: int.tryParse(price.text) ?? 0,
    //     units: units
    //         .map((e) => {
    //       'unit': e['unit']!.text,
    //       'CarpetArea': e['CarpetArea']!.text,
    //       'price': ((double.tryParse(e['price']!.text) ?? 0) * 100000).toString(),
    //     })
    //         .toList());
    // // return a.toString();
    // print(a.toMap().toString());
    // // json.encoder;
    // // output.text = a.toMap().toString();
    // // addProject(a.toMap());
    // final url = Uri.parse('$HOSTNAME/home/projects/');
    // final responce = await http.post(url,
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     },
    //     body: jsonEncode(a.toMap()));
    // print(responce.body);
    // print(responce.statusCode);
    // output.text = json.encode(a.toMap());
    //
    // update();
  }




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // addUnit();
    // getAreas();
  }
}
