


import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '\DashboardScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10),
        child: Text("Dashboard",style: TextStyle(
            fontWeight: FontWeight.w700,
        fontSize: 36),),

      ),
    );
  }
}
