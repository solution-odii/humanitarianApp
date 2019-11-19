import 'package:flutter/material.dart';
import 'package:myproj/CustomAppBar.dart';
import 'package:myproj/CustomShapeClipper.dart';
import 'package:intl/intl.dart';
import 'package:myproj/DonatePage.dart';
import 'package:myproj/Ussd.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() => runApp(HomeScreen());

Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF772C);

ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen');

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Muna App',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: CustomAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[HomeScreenTopPart(), homeScreenBottomPart],
            ),
          ),
        ));
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 380.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [firstColor, secondColor],
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.home, color: Colors.white),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(Icons.blur_on, size: 35.0, color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Secure a Child's\nFuture Today",
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 92.0,
                    ),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'Donate Fund for a Child',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  //    FloatingActionButton(
                  //   backgroundColor: Colors.redAccent,
                  //   onPressed: () => {},

                  // ),

                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoneyListScreen()));
                    },
                    child: Icon(
                      Icons.monetization_on,
                      color: Colors.blue,
                      size: 35.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(15.0),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}

var homeScreenBottomPart = Column(
  children: <Widget>[
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Be a Proud Sponsor Today',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text('Views',
              style: TextStyle(
                color: firstColor,
              )),
        ],
      ),
    ),
    Container(
      height: 210.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: picCards,
      ),
    )
  ],
);

List<PicCard> picCards = [
  PicCard("assets/images/picfive.jpg", "Food", "Hunger", "Fund Now", "200000"),
  PicCard(
      "assets/images/pic7.jpg", "Education", "School", "Fund Now", "100000"),
  PicCard(
      "assets/images/pic1.jpg", "Career", "Training", "Fund Now", "300000"),
  PicCard("assets/images/pic3.jpg", "Shelter", "Living", "Fund Now", "500000"),
  PicCard("assets/images/pic2.jpg", "HealthCare", "Hospital", "Fund Now",
      "150000"),
];
final formatCurrency = NumberFormat.simpleCurrency();

class PicCard extends StatelessWidget {
  final String imagePath, picName, picSubName, fund, price;

  PicCard(this.imagePath, this.picName, this.picSubName, this.fund, this.price);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 190.0,
                  width: 160.0,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 160.0,
                  height: 60.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.1),
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            picName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.0),
                          ),
                          Text(
                            picSubName,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 14.0),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: InkWell(
                            onTap: (){
                              UssdTransfer().openAlertOne(context, price);
                            },
                                                      child: Text(
                              fund,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              Text(
                '₦' + price,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
