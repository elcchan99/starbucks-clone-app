import 'package:flutter/material.dart';
import 'package:starbucks_app/pages/gift.dart';
import 'package:starbucks_app/pages/stores.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainApp(),
    );
  }
}

abstract class MyPage extends Widget {
  String get title;
  Image get navIcon;
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
      bottomNavigationBar: BottomNavigationBar(
          items: pages
              .map((p) => BottomNavigationBarItem(
                    icon: p.navIcon,
                    title: Text(p.title),
                  ))
              .toList(),
          currentIndex: _currentPageIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onNavigate),
    );
  }
}
