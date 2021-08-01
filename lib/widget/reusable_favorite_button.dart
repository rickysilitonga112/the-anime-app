import 'package:flutter/material.dart';
import 'package:the_anime_app/constant.dart';

class ReusableFavoriteButton extends StatefulWidget {
  const ReusableFavoriteButton({Key? key}) : super(key: key);

  @override
  _ReusableFavoriteButtonState createState() => _ReusableFavoriteButtonState();
}

class _ReusableFavoriteButtonState extends State<ReusableFavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = (isFavorite) ? false : true;
        });
      },
      icon: Icon(
        Icons.favorite,
        color: (isFavorite) ? kPrimaryColor : Color(0xff8D969E),
        size: 32.0,
      ),
    );
  }
}
