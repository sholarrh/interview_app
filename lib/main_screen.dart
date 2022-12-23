import 'package:flutter/material.dart';
import 'package:interview_app/widgets/create_new_card_container.dart';
import 'package:interview_app/widgets/topup_container.dart';
import 'package:interview_app/widgets/wallet_container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome Chris👋🏾',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Clash Display Variable',
                fontSize: width * 0.05,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.notifications,
              size: width * 0.05,
              color: const Color(0xff200E32),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.058),
            child: Column(
              children: [
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: const [
                     WalletContainer(),
                     CreateNewCard(),
                   ],
                 ),
               ),

                SizedBox(
                  height: height * 0.027,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TopUpContainer(
                      name: 'Topup Wallet',
                      image: 'assets/images/Back button 2.png',
                    ),

                    TopUpContainer(
                      name: 'Send Money',
                      image: 'assets/images/Back button 1.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.027,
                ),
                Stack(children: [
                  Container(
                    width: double.infinity,
                    height: height * 0.099,
                    padding: EdgeInsets.only(
                        left: width * 0.31, top: height * 0.025),
                    decoration: BoxDecoration(
                      color: const Color(0xff1E1E1E),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verify Email Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Clash Display Variable',
                            fontSize: width * 0.037,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.0067,
                        ),
                        Text(
                          'click here to get a verification mail and \n verify your account',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: width * 0.029,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: width * 0.0242,
                      top: height * 0.0141,
                      child: Image.asset('assets/images/image 10.png')),
                ]),
                SizedBox(
                  height: height * 0.033,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Transaction History',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.037,
                        color: const Color(0xff1E1042),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.029,
                        color: const Color(0xff1E1E1E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.0687,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Group.png'),
                    SizedBox(
                      height: height * 0.0067,
                    ),
                    Text(
                      'No Transaction History',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.037,
                        color: const Color(0xff1E1E1E),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0097,
                    ),
                    Text(
                      'You have not performed any \n transactions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: width * 0.029,
                        color: const Color(0xff646464).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.0687,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
