import 'package:flutter/material.dart';
import 'package:the_anime_app/constant.dart';

class ReusableDetailCard extends StatelessWidget {
  const ReusableDetailCard(
      {Key? key, required this.text, required this.textData})
      : super(key: key);

  final text;
  final textData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w300, color: kTextColor),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            textData,
            style: TextStyle(
              color: kTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
