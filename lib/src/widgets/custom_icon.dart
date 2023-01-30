
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {

final double offset;
final IconData iconData;
final String title;
CustomIcon({
  super.key,
  required this.offset,
  required this.iconData,
  required this.title
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
            duration:Duration(microseconds: 100),
        curve: Curves.easeInOut,
          padding:offset >30 ? EdgeInsets.all(0):EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: offset>30? Colors.red:Colors.white,
            borderRadius:BorderRadius.circular(10),

          ),
          child: Icon(
            iconData,
            color: offset>30 ? Colors.white:Colors.red,
          ),
        ),
      SizedBox(height: 8,),
      offset > 30 ? Container():Text(
        title,
        style: TextStyle(
          fontSize: offset >30 ? 5:15,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
      )
      ],

    );
  }
}

