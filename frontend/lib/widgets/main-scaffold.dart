import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget{
  MyScaffold({super.key, this.child, this.navigationBar, required this.text});
  Widget? child;
  Widget? navigationBar;
  Color backgroundColor = Color(0xFF171717);
  String? text;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: navigationBar,
      appBar: AppBar(
        title: Text(
            this.text!,
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            // Handle the button press
            print('Menu button pressed');
          },
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontFamily: 'Montserrat',
          fontStyle: FontStyle.italic,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      body: child,
    );
  }
}