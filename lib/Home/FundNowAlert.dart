
import 'package:flutter/material.dart';
import 'package:myproj/PaymentMethods/Card/paystackPay.dart';
import 'package:myproj/PaymentMethods/USSD/SelectBankAlert.dart';
import 'package:myproj/Utils/Navigators.dart';

void fundNowOptionAlert(BuildContext context, String amount) {
  showDialog(
      context: context,
      builder: (ctx) {
        return Center(
          child: Dialog(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
              height: 120,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Fund Via...', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),)),
                  ),
                  InkWell(
                    onTap: () async {
                      navigatePush(context, CardPage());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0, top: 10, bottom: 5),
                      child: Row(
                        children: <Widget>[
                          Text('Card', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  InkWell(
                    onTap: () async {
                      openSelectBankAlert(context, amount);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:Row(
                        children: <Widget>[
                          Text('USSD Transfer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

      }
      );
}