import 'package:flutter/material.dart';
import 'package:the_anime_app/constant.dart';
import 'package:the_anime_app/widget/reusable_detail_card.dart';
import 'package:the_anime_app/widget/reusable_favorite_button.dart';

class DetailScreen extends StatelessWidget {
  final animeData;

  DetailScreen({required this.animeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
              child: Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Detail Anime',
                    style: kTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: ExactAssetImage(
                            'assets/${animeData.banner}.jpg',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            animeData.title,
                            style: kTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            animeData.genre,
                            style: kTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      ReusableFavoriteButton(),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableDetailCard(
                        text: 'Rating',
                        textData: '${animeData.rating} / 5',
                      ),
                      ReusableDetailCard(
                        text: 'Episode',
                        textData: animeData.episode.toString(),
                      ),
                      ReusableDetailCard(
                        text: 'Views',
                        textData: animeData.views,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Synopsis',
                    style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '\t\t${animeData.synopsis}',
                    textAlign: TextAlign.justify,
                    style: kTextStyle.copyWith(
                      fontSize: 14,
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
