import 'package:flutter/material.dart';
import 'package:nba_counter/constants.dart';
import 'package:nba_counter/widgets/custom_button.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {

  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 65,
              width: 65,
              child: Image.asset(kIcon),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '$teamApoints',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    color: kPrimaryColor,
                    text: 'Add 1 point',
                    onPressed: () {
                      setState(() {
                        teamApoints++;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    color: kSecondaryColor,
                    text: 'Add 2 points',
                    onPressed: () {
                      setState(() {
                        teamApoints+=2;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    color: Colors.grey.withOpacity(0.4),
                    text: 'Add 3 points',
                    onPressed: () {
                      setState(() {
                        teamApoints+=3;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 450,
                child: VerticalDivider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  Text(
                    'teamName',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '$teamBpoints',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    color: kPrimaryColor,
                    text: 'Add 1 point',
                    onPressed: () {
                      setState(() {
                        teamBpoints++;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    color: kSecondaryColor,
                    text: 'Add 2 points',
                    onPressed: () {
                      setState(() {
                        teamBpoints+=2;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    color: Colors.grey.withOpacity(0.4),
                    text: 'Add 3 points',
                    onPressed: () {
                      setState(() {
                        teamBpoints+=3;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 150,
            child: CustomButton(
              color: kSecondaryColor,
              text: 'Reset',
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
