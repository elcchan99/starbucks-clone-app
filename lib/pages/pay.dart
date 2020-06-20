import 'package:flutter/material.dart';
import 'package:starbucks_app/main.dart';

class PayPage extends StatelessWidget implements MyPage {
  final String title = "Pay";
  final Image navIcon = Image(image: AssetImage("assets/icons/pay.png"));

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Pay")));
  }
}
