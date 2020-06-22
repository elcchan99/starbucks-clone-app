import 'package:flutter/material.dart';
import 'package:starbucks_app/main.dart';

import 'package:starbucks_app/constants.dart' as Constants;

class OrderPage extends StatelessWidget implements MyPage {
  final String title = "Order";
  final Image navIcon = Image(image: AssetImage("assets/icons/cup.png"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyPage.buildAppBar(context, title: title),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              OrderCard(
                title: "Starbuck Delivers Delivery Service",
                description: "Open for orders in selected Hong Kong areas.",
                buttonText: "Order now",
                buttomOnPressed: () {},
                backgroundImage: AssetImage("assets/images/deliver.png"),
              ),
              SizedBox(
                height: 20,
              ),
              OrderCard(
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

class OrderCard extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  Function buttomOnPressed = () {};
  final AssetImage backgroundImage;

  OrderCard({
    Key key,
    this.title = '',
    this.description = '',
    this.buttonText = '',
    this.buttomOnPressed,
    this.backgroundImage,
  }) : super(key: key);

  final TextStyle _titleTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  final TextStyle _descTextStyle = const TextStyle(
      color: Constants.PARE_GREY, fontSize: 18, fontWeight: FontWeight.bold);
  final TextStyle _buttonTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: Colors.white,
      child: Stack(children: [
        Positioned(
            right: 10,
            bottom: 10,
            child: Image(
              width: 150,
              height: 150,
              image: backgroundImage,
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: _titleTextStyle,
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 210,
                  child: Container(
                      child: Text(description, style: _descTextStyle))),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 22),
                      color: Constants.STARBUCKS_GREEN,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(buttonText, style: _buttonTextStyle),
                      onPressed: buttomOnPressed))
            ])),
      ]),
    );
  }
}
