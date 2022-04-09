import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Item {
  String id;
  String name;
  String description;
  int price;
  bool inStock;
  String imageUrl;
  Item(
      {required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.inStock,
        required this.imageUrl});
  String get formattedAvailability => inStock ? "Available" : "Out of stock";
  String get formattedPrice => Item.formatter.format(this.price);
  Color get availabilityColor => inStock ? Colors.grey : Colors.red;
  static final formatter =
  NumberFormat.currency(locale: 'id_ID', symbol: "\$ ");
  static List<Item> get dummyItems => [
    Item(
        id: "1",
        name: "Flutter App             ",
        description: 'Flutter Android or ios Application',
        price: 4999,
        inStock: true,
        imageUrl:
        'https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png'),
    Item(
        id: "2",
        name: "Hybrid App",
        description: 'Hybrid App for Any device',
        price: 5999,
        inStock: true,
        imageUrl:
        'https://www.concettolabs.com/blog/wp-content/uploads/2019/10/HYBRID-APPS.jpg'),
    Item(
        id: "3",
        name: "Desktop App",
        description: 'Desktop Application for any operating system',
        price: 3999,
        inStock: true,
        imageUrl:
        'https://miro.medium.com/max/1200/1*Tgu7GVQg9b8Es4lGA1Fj4g.png'),
    Item(
        id: "4",
        name: "School Management App",
        description: 'School Management Application',
        price: 4999,
        inStock: true,
        imageUrl:
        'https://igetintopc.com/wp-content/uploads/2017/11/School-Management-Software-Free-Download.jpg'),
    Item(
        id: "5",
        name: "Office management Application",
        description: 'More magical than ever.',
        price: 3999,
        inStock: true,
        imageUrl:
        'https://www.softwaresuggest.com/blog/wp-content/uploads/2021/05/Office-Management-Software-guide-696x406.jpg'),
    Item(
        id: "6",
        name: "E-Commerce App",
        description: 'E-Commerce Application for your online Business',
        price: 9999,
        inStock: false,
        imageUrl:
        'https://miro.medium.com/max/640/0*Y-VPj8yB7EsD3kpT'),
  ];
}