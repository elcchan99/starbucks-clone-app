import 'package:flutter/material.dart';
import 'package:starbucks_app/main.dart';

import 'package:starbucks_app/constants.dart' as Constants;

class OrderPage extends StatelessWidget implements MyPage {
  final String title = "Order";
  final Image navIcon = Image(image: AssetImage("assets/icons/cup.png"));

  TextStyle _titleTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  TextStyle _descTextStyle = TextStyle(
      color: Constants.PARE_GREY, fontSize: 18, fontWeight: FontWeight.bold);
  TextStyle _buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  Widget buildCard(context,
      {String title,
      String description,
      String buttonText,
      Function buttomOnPressed,
      AssetImage backgroundImage}) {
    return Stack(children: [
      Material(
          elevation: 3,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                    title,
                    style: _titleTextStyle,
                  )),
                ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        width: 210,
                        child: Container(
                            child: Text(description, style: _descTextStyle)))),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        child: FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 22),
                            color: Constants.STARBUCKS_GREEN,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text(buttonText, style: _buttonTextStyle),
                            onPressed: buttomOnPressed)))
              ]))),
      Positioned(
          right: 0,
          bottom: 0,
          child: Image(
            width: 150,
            height: 150,
            image: backgroundImage,
          ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyPage.buildAppBar(context, title: title),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              buildCard(
                context,
                title: "Starbuck Delivers Delivery Service",
                description: "Open for orders in selected Hong Kong areas.",
                buttonText: "Order now",
                buttomOnPressed: () {},
                backgroundImage: AssetImage("assets/images/deliver.png"),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard(
                context,
                title: "Pickup at Starbucks",
                description: "Exclusive to Starbucks Rewards™ members.",
                buttonText: "View menu",
                buttomOnPressed: () {},
                backgroundImage: AssetImage("assets/images/branch.png"),
              ),
            ],
          ),
        ));
  }
}
