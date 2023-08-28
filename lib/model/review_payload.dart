import 'dart:convert';


class HouseModel{
  final String curtains;
  final String windows;
  final String? floor;

  HouseModel(this.curtains, this.windows, this.floor);

  factory HouseModel.fromJson(Map<String, dynamic> data){
    final curtains = data["curtains"];
    final windows = data["windows"];



  }


}