import 'package:flutter/material.dart';
import 'package:the_anime_app/constant.dart';

class HomeScreen extends StatelessWidget {
  final String user;
  HomeScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(24),
              height: 98,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: ExactAssetImage('assets/profile.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Have a nice day',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        user,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Top Anime',
                style: TextStyle(
                  color: kBlackTextColor,
                  fontSize: 18,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/poster/deathnote_poster.jpg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
