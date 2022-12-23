
// This is the second container that says 'create new card'.

import 'package:flutter/material.dart';

class CreateNewCard extends StatelessWidget {
  const CreateNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.335,
      width:  width * 0.5314,
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset('assets/images/Group 1000003719.png'),
          SizedBox(
            height:  height * 0.0067,
          ),
          Text(
            'Create New Card',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: width * 0.048,
              color: const Color(0xff1E1E1E),
            ),
          ),
          SizedBox(
            height:  height * 0.0067,
          ),
          Text(
            'Create New virtual card for \n all your payments',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: width * 0.029,
              color: const Color(0xff646464).withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
