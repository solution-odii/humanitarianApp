import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Donate/PaymentOptionDesign.dart';
import 'package:myproj/Models/CharityItemsModel.dart';
import 'package:myproj/PaymentMethods/USSD/SelectBankAlert.dart';
import 'package:myproj/Utils/Navigators.dart';

import '../PaymentMethods/Card/paystackPay.dart';

class CharityItemDesign extends StatelessWidget {
  final CharityItemsModel charityItemsModel;

  CharityItemDesign(this.charityItemsModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        height: 100.0,
        //padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(color: AppColors.areaBorderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    charityItemsModel.amount,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Spacer(),
                  Text(
                    charityItemsModel.charityName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    child: PaymentOptionDesign(
                        Icons.blur_linear,
                        'USSD Transfer',
                        AppColors.firstColor.withOpacity(0.65),
                        Colors.white),
                    onTap: () {
                      openSelectBankAlert(context, charityItemsModel.amount);
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    child: PaymentOptionDesign(
                        Icons.credit_card,
                        'Pay with Card',
                        AppColors.firstColor.withOpacity(0.65),
                        Colors.white),
                    onTap: () {
                      navigatePush(context, CardPage());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
