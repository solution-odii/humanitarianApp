
import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Models/BankModel.dart';
import 'package:myproj/PaymentMethods/USSD/Ussd.dart';

class SelectBankDesign extends StatelessWidget {
final BankModel bankModel;
final String amount;

SelectBankDesign(this.bankModel, this.amount);

@override
Widget build(BuildContext context) {
  return InkWell(
    onTap: (){
      if(bankModel.bankName.contains('Heritage')
          ||bankModel.bankName.contains('UBA')
          ||bankModel.bankName.contains('Unity')
          ||bankModel.bankName.contains('Wema')){
        UssdTransfer().bankTransferTypeTwo(bankModel.bankTransferCode, amount);
      }else{
        UssdTransfer().bankTransferTypeOne(bankModel.bankTransferCode, amount);
      }
    },
    child: Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage:
            AssetImage(bankModel.bankImage),

          ),
          title: Text(
            bankModel.bankName,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.firstColor),
          ),

        ),
        Divider(height: 2, color: Colors.grey.withOpacity(.65),)
      ],
    ),
  );
}
}
