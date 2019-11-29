import 'package:flutter/material.dart';
import 'package:myproj/Info/InfoPage.dart';
import 'package:myproj/Utils/BottomNavigationBar.dart';
import 'package:intl/intl.dart';
import 'package:myproj/Donate/DonatePage.dart';
import 'package:myproj/Home/HomePage.dart';


void main() {
  runApp(MaterialApp(
    title: 'Juru',
    theme: ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen'),
    debugShowCheckedModeBanner: false,
    home: MainWidget(),

  ),);
}



final formatCurrency = NumberFormat.simpleCurrency();

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    DonatePage(),
    InfoScreen(),
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: BottomNav(
        index: currentTab,
        labelStyle: LabelStyle(visible: true),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          BottomNavItem(Icons.home, label: 'Home'),
          BottomNavItem(Icons.favorite, label: 'Donate'),
          BottomNavItem(Icons.info, label: 'Info'),
        ],
      ),
    );
  }
}
