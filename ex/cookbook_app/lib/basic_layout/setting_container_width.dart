import 'package:flutter/material.dart';

class SettingContainerWidth extends StatelessWidget {
  const SettingContainerWidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // grey box
      child: Center(
        child: Container(
          // red box
          child: Text(
            "Lorem ipsum",
          ),
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
          padding: EdgeInsets.all(16),
          width: 240, //max-width is 240
        ),
      ),
      width: 320,
      height: 240,
      color: Colors.grey[300],
    );
    ;
  }
}
