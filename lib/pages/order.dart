import 'package:flutter/material.dart';
import 'package:starbucks_app/main.dart';

class OrderPage extends StatelessWidget implements MyPage {
  final String title = "Order";
  final Image navIcon = Image(image: AssetImage("assets/icons/cup.png"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              height: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(title,
                        style: Theme.of(context).primaryTextTheme.headline6)),
              ),
            ),
            excludeHeaderSemantics: true,
          ),
        ),
        body: Center(child: Container(child: Text("Order"))));
  }
}
