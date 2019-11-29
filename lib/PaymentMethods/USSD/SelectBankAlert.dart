import 'package:flutter/material.dart';
import 'package:myproj/PaymentMethods/USSD/SelectBankListView.dart';

Future<void> openSelectBankAlert(BuildContext context, String amt) async {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
              height: 500.0,
              child: SelectBankListView(amt),
            ),
          ),
        );
      });
}

//Text("Select Your Bank and Dial the unique generated USSD code to complete transactions")
