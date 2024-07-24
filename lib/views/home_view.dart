import 'package:flutter/material.dart';
import 'package:nba_counter/constants.dart';
import 'package:nba_counter/views/dash_board_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('N',style: TextStyle(
              color: kPrimaryColor,
              fontSize: 32,fontWeight: FontWeight.bold,
            ),),
            Text('B',style: TextStyle(
              color: kSecondaryColor,
              fontSize: 32,fontWeight: FontWeight.bold,
            ),),
            Text('A',style: TextStyle(
              color: Colors.white,
              fontSize: 32,fontWeight: FontWeight.bold,
            ),),
            SizedBox(width: 5,),
            Text('Counter',style: TextStyle(
              color: kPrimaryColor,
              fontSize: 32,fontWeight: FontWeight.bold,
            ),),
          ],
        ),

      ),
      body: DashBoardView(),
    );
  }
}
