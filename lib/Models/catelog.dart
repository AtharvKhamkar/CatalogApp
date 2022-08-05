import 'package:catelogapp/widgets/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Item {
  final int id;
  final String name;
  final String dec;
  final num price;
  final Image;

  Item(
      {this.id = 0,
      this.name = "Iphone 13",
      this.dec = "a15bionic chip",
      this.price = 999,
      this.Image = 0});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      dec: map["dec"],
      price: map["price"],
      Image: map["Image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "dec": dec,
        "price": price,
        "Image": Image,
      };
}

class CatelogModel {

  //Get item by id
   Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get Item by position

   Item getByPosition(int pos) => items[pos];
  static List<Item> items = [
    Item(
        id: 0,
        name: "Iphone 13 pro max",
        dec: "A15 bionic chip,4GB Ram,128GB storage",
        price: 1000,
        Image: Image.asset("assets/Images/iphone13promax.jpg")),
    Item(
        id: 1,
        name: "Iphone 12",
        dec: "A14 bionic chip",
        price: 900,
        Image: Image.asset("assets/Images/iphone12.jpg")),
    Item(
        id: 2,
        name: "OnePlus Nord 2",
        dec: "Dimensity 1200,6GB Ram,128GB storage",
        price: 500,
        Image: Image.asset("assets/Images/nord2.jpg")),
    Item(
        id: 3,
        name: "Apple macbook M1",
        dec: "M1 Chip,1TB SSD storage",
        price: 1200,
        Image: Image.asset("assets/Images/AppleM1.jpg")),
    Item(
        id: 4,
        name: "Samsung S21",
        dec: "Snapdragoan 888,128GB storage",
        price: 1100,
        Image: Image.asset("assets/Images/SamsungS21.jpg")),
    Item(
        id: 5,
        name: "Google Pixel 6",
        dec: "Tenson Chip,6GB Ram,128GB storage",
        price: 700,
        Image: Image.asset("assets/Images/Pixel6.jpg")),
    Item(
        id: 6,
        name: "Nothing Phone 1",
        dec: "Dimensity 1300,6GB Ram,128GB storage",
        price: 600,
        Image: Image.asset("assets/Images/Nothing.jpg")),
    Item(
        id: 7,
        name: "Apple Ipad pro",
        dec: "M1 chip,4 Ram,256 storage",
        price: 600,
        Image: Image.asset("assets/Images/Ipadpro.jpg")),
    Item(
        id: 8,
        name: "Realme pro +",
        dec: "Dimensity 1200,6GB Ram,128GB storage",
        price: 200,
        Image: Image.asset("assets/Images/Realme9proplus.jpg")),
    Item(
        id: 9,
        name: "Xiomi 12 pro",
        dec: "Snapdragon 8+,8GB Ram,128GB storage",
        price: 500,
        Image: Image.asset("assets/Images/Xiomi12pro.jpg")),
  ];
}
