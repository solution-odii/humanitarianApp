import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Donate/CharityItemDesign.dart';
import 'package:myproj/Models/CharityItemsModel.dart';

class CharityItemListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400.0,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          ///this is a list view builder which returns the view for each view
          return new CharityItemDesign(charityItemsList[index]);
        },
        itemCount: charityItemsList.length,
      ),
    );
  }
}
