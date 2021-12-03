import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/app_large_text.dart';
import 'package:travel_app/Widgets/app_text.dart';
import 'package:travel_app/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "balloning.png": "Balloning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkling"
  };

  var main_images = {
    "ABC.jpg": "ABC Trek",
    "d.jpg": "Kori Trek",
    "Mardi.jpg": "Mardi Trek",
    "Tilicho.jpg": "Tilicho Trek",
    "Mardi.jpg": "Gosainkunda Trek",
  };

  var hiking_images = {
    "bethanchowk.jpg": "Bethanchowk",
    "chandragiri.jpg": "Chandragiri",
    "shivapuri.jpg": "Shivapuri",
    "pilotbabta.jpg": "Pilot Baba",
    "d.jpg":"a"
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(),
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Explore Nepal"),
          ),
          SizedBox(
            height: 20,
          ),
          //tabbar
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: AppText(
              color: Colors.black,
              text: "Trekking",
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 270,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("images/" +
                                  main_images.keys.elementAt(index)),
                              fit: BoxFit.cover),
                        ),
                      ),
                    );
                  }),
              Text("In Progress"),
              Text("In Progress")
            ]),
          ),
          SizedBox(height: 20),

          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: AppText(
              color: Colors.black,
              text: "Hiking",
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 270,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("images/" +
                                  hiking_images.keys.elementAt(index)),
                              fit: BoxFit.cover),
                        ),
                      ),
                    );
                  }),
              Text("In Progress"),
              Text("In Progress")
            ]),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
