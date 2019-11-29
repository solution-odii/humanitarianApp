
import 'package:flutter/material.dart';
import 'package:myproj/Models/BankModel.dart';
import 'package:myproj/PaymentMethods/USSD/SelectBankDesign.dart';

class SelectBankListView extends StatelessWidget{
  final String amount;
  SelectBankListView(this.amount);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index){
        ///this is a list view builder which returns the view for each view
        return new  SelectBankDesign(bankList[index], amount);
      },
      itemCount: bankList.length,
    );


  }
}