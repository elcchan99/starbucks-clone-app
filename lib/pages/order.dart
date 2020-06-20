import 'package:flutter/material.dart';
import 'package:starbucks_app/main.dart';

class OrderPage extends StatelessWidget implements MyPage {
  final String title = "Order";
  final Image navIcon = Image(image: AssetImage("assets/icons/cup.png"));

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Order")));
  }
}