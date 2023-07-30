
import 'dart:ui';

class HouseInfo{

  late Image img;
  late String buildingName;
  late String location;
  late String size;
  late int bedrooms, bathrooms, floor;
  late int rent;
  late String description;

  HouseInfo(
  {
    // required this.img,
    required this.buildingName,
    required this.location,
    required this.size,
    required this.bedrooms,
    required this.bathrooms,
    required this.floor,
    required this.rent,
  }
      );

  // String getName(){
  //   return this.buildingName;
  // }
}