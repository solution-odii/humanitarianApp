import 'package:flutter/material.dart';
import 'package:myproj/CustomShapeClipper.dart';
import 'package:myproj/MoneyPartFive.dart';
import 'package:myproj/MoneyPartFour.dart';
import 'package:myproj/MoneyPartOne.dart';
import 'package:myproj/MoneyPartSeven.dart';
import 'package:myproj/MoneyPartSix.dart';
import 'package:myproj/MoneyPartThree.dart';
import 'package:myproj/MoneyPartTwo.dart';
import 'package:myproj/main.dart';
import 'package:url_launcher/url_launcher.dart';

final Color iconBackgroundColor = Color(0xFFFFE88D);
final Color areaBorderColor = Color(0xFFE6E6E6);
final Color payWithColor = Color(0xFFF6F6F6);

class MoneyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        title: Text("Amount to Donate"),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MoneyListTopPart(),
            MoneyListBottomPart(),
          ],
        ),
      ),
    );
  }
}

class MoneyListTopPart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MoneyListTopPartState();
  }
}

class MoneyListTopPartState extends State<MoneyListTopPart> {
  String acctNum = '0074376965';
  GlobalKey<FormState> textFormKey = GlobalKey();

  Future<void> _openAlert(String amt) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Your Bank and Dial the unique generated USSD code to complete transactions"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/accessbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     Access Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),
                    SizedBox(
                      height: 10.0,
                    ),
                  InkWell(
                    onTap: () {
                      String url = Uri.encodeComponent(
                          '*426*' + amt + '*' + acctNum + '#');
                      launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/diamondbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     Diamond Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),

                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/ecobankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     EcoBank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),
                  
                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/fcmbbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     FCMB',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),
                  
                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/fidelitybankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     Fidelity Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),
                  
                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/firstbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     First Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),

                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/gtbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     GTBank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),

                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/sterlingbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     Sterling Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),

                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/ubabankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     UBA',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),

                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/unionbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     Union Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),

                   SizedBox(
                      height: 10.0,
                    ),

                  InkWell(
                    onTap: () {
                      // String url = Uri.encodeComponent(
                      //     '*426*' + amt + '*' + acctNum + '#');
                      // launch('tel:' + url);
                    },
                    child: Row(
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/zenithbankbutton.png'),
                          height: 50,
                          width: 50,
                        ),
                        Text('     Zenith Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    String _donateAmt = '';
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 160.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [firstColor, secondColor]),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: Form(
                      key: textFormKey,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter an amount';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _donateAmt = value;
                        },
                        style: TextStyle(fontWeight: FontWeight.bold),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter Amount, e.g 1000, 200000',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      child: PaymentOption(Icons.blur_linear, 'USSD Transfer'),
                      onTap: () {
                        //print(_donateAmt);
                        if (textFormKey.currentState.validate()) {
                          textFormKey.currentState.save();
                          _openAlert(_donateAmt);
                        }
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    InkWell(
                      child: PaymentOption(Icons.credit_card, 'Pay with Card'),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentOption extends StatefulWidget {
  final IconData icon;
  final String text;

  PaymentOption(this.icon, this.text);

  @override
  _PaymentOptionState createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class MoneyListBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'OR Select Specific Amount to Donate',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              MoneyCardOne(),
              MoneyCardTwo(),
              MoneyCardThree(),
              MoneyCardFour(),
              MoneyCardFive(),
              MoneyCardSix(),
              MoneyCardSeven()
            ],
          )
        ],
      ),
    );
  }
}

class PaymentOptionTwo extends StatefulWidget {
  final IconData icon;
  final String text;

  PaymentOptionTwo(this.icon, this.text);

  @override
  _PaymentOptionStateTwo createState() => _PaymentOptionStateTwo();
}

class _PaymentOptionStateTwo extends State<PaymentOptionTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
