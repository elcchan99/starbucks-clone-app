import 'package:flutter/material.dart';

import '../main.dart';

class StorePage extends StatelessWidget implements MyPage {
  final String title = "Store";
  final Image navIcon = Image(image: AssetImage("assets/icons/store.png"));

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Store")));
  }
}
