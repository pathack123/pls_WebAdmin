import 'package:flutter/material.dart';
import 'package:webadmin/views/screens/side_bar_screens/widgets/seller_widget.dart';

class SellerScreen extends StatelessWidget {
  static const String routeName = '\SellerScreen';

  Widget _rowHeader(String text, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          color: Colors.yellow.shade900,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              "Manage Seller",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
          ),
          Row(
            children: [
              _rowHeader('LOGO', 1),
              _rowHeader('BUSSINESS NAME', 3),
              _rowHeader('CITY', 2),
              _rowHeader('STATE', 2),
              _rowHeader('ACTION', 1),
              _rowHeader('VIEW MORE', 1),
            ],
          ),
          SellerWidget(),
        ],
      ),
    );
  }
}