import 'package:flutter/material.dart';

class TopUpContainer extends StatelessWidget {
  final String name;
  final String image;
  const TopUpContainer({Key? key, required this.name, required this.image, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.06,
      width: width * 0.4,
      margin:  EdgeInsets.symmetric(vertical: height * 0.011),
      //padding: const EdgeInsets.only(top: 7, right: 19, bottom: 7, left: 10 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(
            width: width * 0.019,
          ),
          Text(name,
          style: TextStyle(
            fontSize: width * 0.038,
            fontWeight: FontWeight.w400,
            color: const Color(0xff252525),
          ),),
        ],
      ),
    );
  }
}
