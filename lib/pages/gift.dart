import 'package:flutter/material.dart';
import 'package:starbucks_app/main.dart';

class GiftPage extends StatelessWidget implements MyPage {
  final String title = "Gift";
  final Image navIcon = Image(image: AssetImage("assets/icons/gift.png"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyPage.buildAppBar(context, title: title),
        body: Center(child: Container(child: Text("Gift"))));
  }
}
