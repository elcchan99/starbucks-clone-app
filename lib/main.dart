import 'package:flutter/material.dart';
import 'package:starbucks_app/pages/gift.dart';
import 'package:starbucks_app/pages/stores.dart';

import 'constants.dart' as Constants;
import 'pages/home.dart';
import 'pages/order.dart';
import 'pages/pay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryTextTheme: TextTheme(
          // App Bar title
          headline6: TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(247, 247, 247, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainApp(),
    );
  }
}

abstract class MyPage extends Widget {
  String get title;
  Image get navIcon;

  static PreferredSizeWidget buildAppBar(context, {title}) {
    return PreferredSize(
      preferredSize: Size.fromHeight(90),
      child: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(title,
                    style: Theme.of(context).primaryTextTheme.headline6)),
          ),
        ),
        excludeHeaderSemantics: true,
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentPageIndex = 0;
  List<MyPage> pages = [
    HomePage(),
    PayPage(),
    OrderPage(),
    GiftPage(),
    StorePage(),
  ];

  void onNavigate(nextPageIndex) {
    setState(() {
      _currentPageIndex = nextPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPageIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Constants.STARBUCKS_GREEN,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                    color: Constants.PARE_GREY, fontWeight: FontWeight.bold))),
        child: BottomNavigationBar(
            items: pages
                .map((p) => BottomNavigationBarItem(
                      icon: SizedBox(width: 50, height: 50, child: p.navIcon),
                      title: Text(p.title),
                    ))
                .toList(),
            currentIndex: _currentPageIndex,
            type: BottomNavigationBarType.fixed,
            onTap: onNavigate),
      ),
    );
  }
}
