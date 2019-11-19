import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CustomAppBar extends StatelessWidget{
   final List<BottomNavigationBarItem> bottomBarItems =[];

   final bottomNavigationBarItemStyle =
   TextStyle(fontStyle: FontStyle.normal, color: Colors.black);

   CustomAppBar(){
     bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.orange,
        ),
        title: Text("Home", style: bottomNavigationBarItemStyle),
      ),
     );   

     bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
        title: Text("Donate", style: bottomNavigationBarItemStyle),
      ),
     ); 

     bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.info,
          color: Colors.black,
        ),
        title: Text("Info", style: bottomNavigationBarItemStyle),
      ),
     ); 
   }
  
  @override
  Widget build(BuildContext context) {
  
    return Material(
      elevation: 10.0,
          child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
        
      ),
      
    );

    
  }

}