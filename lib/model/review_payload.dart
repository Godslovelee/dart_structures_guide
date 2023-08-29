import 'dart:convert';


class HouseModel{
  final String curtains;
  final String windows;
  final String? floor;

  HouseModel({required this.curtains, required this.windows, required this.floor});

  factory HouseModel.fromJson(Map<String, dynamic> data){
    final curtains = data["curtains"];
    final windows = data["windows"];
    final floor = data["floor"];

    /// ADD CASE STATEMENTS...

    return HouseModel(curtains:curtains, windows:windows, floor:floor);



  }


}