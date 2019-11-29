import 'package:flutter/material.dart';
import 'package:myproj/Constants/AppColors.dart';
import 'package:myproj/Home/PicCardListView.dart';

class HomeScreenBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Be a Proud Sponsor Today',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text('Views',
                  style: TextStyle(
                    color: AppColors.firstColor,
                  )),
            ],
          ),
        ),
        PicCardListView(),
      ],
    );
  }
}
