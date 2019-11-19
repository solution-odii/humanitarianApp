import 'package:flutter/material.dart';
import 'package:myproj/Ussd.dart';
import 'DonatePage.dart';

class MoneyCardTwo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            height: 100.0,
          
            //padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              border: Border.all(color: areaBorderColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '₦500,000',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Spacer(),
                      Text(
                        'Education',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                 Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        child: PaymentOptionTwo(Icons.blur_linear, 'USSD Transfer'),
                        onTap: () {
                          UssdTransfer().openAlertOne(context, '500000');
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: PaymentOptionTwo(Icons.credit_card, 'Pay with Card'),
                        onTap: () {},
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}