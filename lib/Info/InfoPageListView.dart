
import 'package:flutter/material.dart';
import 'package:myproj/Info/InfoPageListDesign.dart';
import 'package:myproj/Models/InfoModel.dart';

class InfoPageListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600.0,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index){
          ///this is a list view builder which returns the view for each view
          return new  InfoPageListDesign(infoModelList[index]);
        },
        itemCount: infoModelList.length,
      ),
    );


  }
}