
import 'package:flutter/material.dart';

class SellerWidget extends StatelessWidget {
  const SellerWidget({Key? key}) : super(key: key);

  Widget sellerData(int? flex, Widget widget) {
    return Expanded(
      flex: flex!,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Column();
  }
}
