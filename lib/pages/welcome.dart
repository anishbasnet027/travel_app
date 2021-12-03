import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Widgets/app_large_text.dart';
import 'package:travel_app/Widgets/app_text.dart';
import 'package:travel_app/Widgets/responsive_button.dart';

import 'package:travel_app/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "background3.jpg",
    "background2.jpg",
    "background1a.jpg",
  ];
  List textDisplay = [
    ""
  ]; //want to display different text then , put in list and do exact like image .
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //pageView.Builder makes page slideable
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 70, left: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Visit Nepal"),
                        AppText(
                          text: "Nepal 2021",
                          size: 20,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  Colors.white.withOpacity(0.5),
                                  Colors.white.withOpacity(0.2)
                                ])),
                            width: 250,
                            child: AppText(
                              color: Colors.black.withOpacity(0.7),
                              text:
                                  "   Nepal is beautiful country,    Mountaineering, Trekking, Hikings,    Adventurous Fun, Culture, Values,           and Many More",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //here was image button
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            },
                            icon: Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexSlider) {
                        return Container(
                          margin: const EdgeInsets.all(3),
                          width: 8,
                          height: index == indexSlider ? 25 : 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexSlider
                                  ? Colors.amber
                                  : Colors.red),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
