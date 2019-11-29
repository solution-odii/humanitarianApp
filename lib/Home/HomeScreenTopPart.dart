import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Donate/DonatePage.dart';
import 'package:myproj/PaymentMethods/USSD/SelectBankAlert.dart';
import 'package:myproj/Utils/CustomShapeClipper.dart';

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
                  colors: [AppColors.firstColor, AppColors.secondColor],
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


                  RawMaterialButton(
                    onPressed: () {

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