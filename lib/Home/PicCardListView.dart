

import 'package:flutter/material.dart';
import 'package:myproj/Home/PicCardDesign.dart';
import 'package:myproj/Models/PicCardModel.dart';

class PicCardListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 210.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          ///this is a list view builder which returns the view for each view
          return new  PicCardDesign(picCardList[index]);
        },
        itemCount: picCardList.length,
      ),
    );


  }
}