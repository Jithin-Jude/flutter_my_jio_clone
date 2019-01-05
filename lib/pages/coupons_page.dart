import 'package:flutter/material.dart';

class CouponsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/demo_pages/coupons_page_demo.jpg"),
            fit: BoxFit.fill,
          ),
        )
    );
  }
}