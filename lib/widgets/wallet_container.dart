


import 'package:flutter/material.dart';

class WalletContainer extends StatelessWidget {
  const WalletContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.335,
      width:  width * 0.5314,
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.only( right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xff1E1E1E),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/info-circle.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/Back button 3.png')
            ],
          ),
          SizedBox(
            height:  height * 0.068,
          ),
          Text(
            'Wallet Balance',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: width * 0.037,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(
            height:  height * 0.0067,
          ),
          Text(
            '\$100,590.24',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: width * 0.058,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
