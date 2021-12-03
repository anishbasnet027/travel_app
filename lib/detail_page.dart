import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/app_buttons.dart';
import 'package:travel_app/Widgets/app_large_text.dart';
import 'package:travel_app/Widgets/app_text.dart';
import 'package:travel_app/Widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/ABC.jpg"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "ABC Trek",
                            color: Colors.black54,
                          ),
                          AppLargeText(
                            text: "",
                            color: Colors.black54,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "Ghandruk,Kaski",
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? Colors.amber.shade400
                                    : Colors.grey,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0)",
                            color: Colors.black87,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppLargeText(text: "Description"),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                          text:
                              "Annapurna Base Camp trek is one of the most popular treks in Nepal. The Annapurna Base Camp trek is popularly known as the ABC trek. Given its international fame, the trek attracts many trekkers from all over the globe. Over a period of 6 trekking days, you gain the maximum altitude of 13,549 ft. The trail of the Annapurna Base Camp trek is breathtakingly beautiful. As you hike through the Annapurna Sanctuary, you come across the most striking flora and fauna. ")
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
