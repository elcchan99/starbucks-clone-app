import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatelessWidget implements MyPage {
  final String title = "Home";
  final Image navIcon = Image(image: AssetImage("assets/icons/star.png"));

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Home")));
  }
}
