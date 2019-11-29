import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Donate/PaymentOptionDesign.dart';
import 'package:myproj/PaymentMethods/USSD/SelectBankAlert.dart';
import 'package:myproj/Utils/CustomShapeClipper.dart';

class DonatePageTopPart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DonatePageTopPartState();
  }
}

class DonatePageTopPartState extends State<DonatePageTopPart> {
  GlobalKey<FormState> textFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String donateAmt;
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 160.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [AppColors.firstColor, AppColors.secondColor]),
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
                          donateAmt = value;
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
                      child: PaymentOptionDesign(Icons.blur_linear, 'USSD Transfer', Colors.white.withOpacity(0.15), Colors.white),
                      onTap: () {
                        print(donateAmt);
                       openSelectBankAlert(context, donateAmt);
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    InkWell(
                      child: PaymentOptionDesign(Icons.credit_card, 'Pay with Card', Colors.white.withOpacity(0.15), Colors.white),
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