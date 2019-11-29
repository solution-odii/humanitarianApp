import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Models/InfoModel.dart';

class InfoPageListDesign extends StatelessWidget {
  final InfoModel infoModel;

  InfoPageListDesign(this.infoModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print(infoModel.infoName);
      },
      child: Card(
        child: Column(
          children: <Widget>[
             ListTile(
              leading: Icon(
                infoModel.iconData,
                size: 25,
              ),
              title: Text(
                infoModel.infoName,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.firstColor),
              ),
              subtitle: Text(infoModel.infoHint),
            ),
          ],
        ),
      ),
    );
  }
}
