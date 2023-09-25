import 'package:flutter/material.dart';
import '/widgets/AnimatedContainer.dart';

void main() {
  runApp(MaterialApp(
    title: "Animations",
    home: Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AnimatedContainerWidget(),
          ],
        ),
      ),
    ),
  ));
}
