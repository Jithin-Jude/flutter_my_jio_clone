import 'package:flutter/material.dart';

class EngagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/demo_pages/engage_page_demo.jpg"),
            fit: BoxFit.fill,
          ),
        )
    );
  }
}