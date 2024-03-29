import 'package:flutter/material.dart';
import 'package:myproj/Constants/Strings.dart';
import 'package:url_launcher/url_launcher.dart';
class UssdTransfer {

  bankTransferTypeOne(String code, amt) {
    String url = Uri.encodeComponent(
        code + amt + '*' + acctNum + '#');
    launch('tel:' + url);
  }

  bankTransferTypeTwo(String code, amt) {
    String url = Uri.encodeComponent(
        code + acctNum + '*' + amt + '#');
    launch('tel:' + url);
  }

}

//
//Future<void> openAlertOne(BuildContext context, String amt) async {
//    return showDialog(
//        context: context,
//        barrierDismissible: true,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Text("Select Your Bank and Dial the unique generated USSD code to complete transactions"),
//            content: SingleChildScrollView(
//              child: ListBody(
//                children: <Widget>[
//
//                  InkWell(
//                    onTap: () {
//                       String url = Uri.encodeComponent(
//                           '*737*2*' + amt + '*' + acctNum + '#');
//                       launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        Image(
//                          image:
//                              AssetImage('assets/images/gtbankbutton.png'),
//                          height: 50,
//                          width: 50,
//                        ),
//                        Text('     GTBank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//
//                  InkWell(
//                    onTap: () {
//                      String url = Uri.encodeComponent(
//                          '*322*030*' + acctNum + '*' + amt + '#');
//                      launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          radius: 25,
//                          backgroundImage:
//                          AssetImage('assets/images/heritagebankbutton.png'),
//
//                        ),
//                        Text('     Heritage Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//
//                  InkWell(
//                    onTap: () {
//                      String url = Uri.encodeComponent(
//                          '*7111*' + amt + '*' + acctNum + '#');
//                      launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          radius: 25,
//                          backgroundImage:
//                          AssetImage('assets/images/keystonebankbutton.jpg'),
//
//                        ),
//                        Text('     Keystone Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//
//                  InkWell(
//                    onTap: () {
//                      String url = Uri.encodeComponent(
//                          '*833*' + amt + '*' + acctNum + '#');
//                      launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          radius: 25,
//                          backgroundImage:
//                          AssetImage('assets/images/polarisbankbutton.png'),
//
//                        ),
//                        Text('     Polaris Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//
//                  InkWell(
//                    onTap: () {
//                      String url = Uri.encodeComponent(
//                          '*909*22*' + amt + '*' + acctNum + '#');
//                      launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          radius: 25,
//                          backgroundImage:
//                          AssetImage('assets/images/stanbicbankbutton.jpg'),
//
//                        ),
//                        Text('     Stanbic IBTC Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//
//
//                  SizedBox(
//                      height: 10.0,
//                    ),
//
//                  InkWell(
//                    onTap: () {
//                       String url = Uri.encodeComponent(
//                           '*822*5*' + amt + '*' + acctNum + '#');
//                       launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        Image(
//                          image:
//                              AssetImage('assets/images/sterlingbankbutton.png'),
//                          height: 50,
//                          width: 50,
//                        ),
//                        Text('     Sterling Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//                   SizedBox(
//                      height: 10.0,
//                    ),
//
//                  InkWell(
//                    onTap: () {
//                       String url = Uri.encodeComponent(
//                           '*919*4*' + acctNum + '*' + amt + '#');
//                       launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        Image(
//                          image:
//                              AssetImage('assets/images/ubabankbutton.png'),
//                          height: 50,
//                          width: 50,
//                        ),
//                        Text('     UBA',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//                   SizedBox(
//                      height: 10.0,
//                    ),
//
//                  InkWell(
//                    onTap: () {
//                       String url = Uri.encodeComponent(
//                           '*826*2*' + amt + '*' + acctNum + '#');
//                       launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        Image(
//                          image:
//                              AssetImage('assets/images/unionbankbutton.png'),
//                          height: 50,
//                          width: 50,
//                        ),
//                        Text('     Union Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//
//                  InkWell(
//                    onTap: () {
//                      String url = Uri.encodeComponent(
//                          '*7799*2*' + acctNum + '*' + amt + '#');
//                      launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          radius: 25,
//                          backgroundImage:
//                          AssetImage('assets/images/unitybankbutton.png'),
//
//                        ),
//                        Text('     Unity Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//
//                  InkWell(
//                    onTap: () {
//                      String url = Uri.encodeComponent(
//                          '*945*' + acctNum + '*' + amt + '#');
//                      launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          radius: 25,
//                          backgroundImage:
//                          AssetImage('assets/images/wemabankbutton.jpg'),
//
//                        ),
//                        Text('     Wema Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//
//
//
//                  SizedBox(
//                      height: 10.0,
//                    ),
//
//                  InkWell(
//                    onTap: () {
//                       String url = Uri.encodeComponent(
//                           '*966*' + amt + '*' + acctNum + '#');
//                       launch('tel:' + url);
//                    },
//                    child: Row(
//                      children: <Widget>[
//                        Image(
//                          image:
//                              AssetImage('assets/images/zenithbankbutton.png'),
//                          height: 50,
//                          width: 50,
//                        ),
//                        Text('     Zenith Bank',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 20.0)),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            actions: <Widget>[
//              FlatButton(
//                child: Text("Cancel"),
//                onPressed: () {
//
//
//                  Navigator.of(context).pop();
//                },
//              )
//            ],
//          );
//        });
//  }
//}
