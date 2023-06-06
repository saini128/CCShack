import 'package:flutter/material.dart';

class TraderHome extends StatefulWidget {
  TraderHome({Key? key}) : super(key: key);

  @override
  State<TraderHome> createState() => _TraderHome();
}
class _TraderHome extends State<TraderHome> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Text(
          'Welcome Trader',
          style: TextStyle(
            color: Colors.black,
          ),
          )
          ],
        ),
      ),

    );
  }
}