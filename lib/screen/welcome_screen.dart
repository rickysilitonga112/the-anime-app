import 'package:flutter/material.dart';
import 'package:the_anime_app/constant.dart';
import 'package:the_anime_app/screen/home_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  String? name;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
      print(_controller.value);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBackgroundColor.withOpacity(_controller.value),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140 * _controller.value,
              height: 140 * _controller.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage('assets/logo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'The',
                    style: kTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  DefaultTextStyle(
                    style: kTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                    child: AnimatedTextKit(
                      pause: Duration(seconds: 5),
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Anime App'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (inputName) {
                  name = inputName;
                },
                style: TextStyle(
                  fontSize: 16,
                  color: kBlackTextColor,
                ),
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'input your name',
                  hintStyle: TextStyle(
                    color: kTextHintColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                // route to home screen
                if (name == null) {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "Input your name",
                    desc: "Name cannot be empty",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "BACK",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen(user: name!);
                  }));
                }
              },
              child: Container(
                height: 36,
                width: 168,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
