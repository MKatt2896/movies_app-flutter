import 'package:flutter/material.dart';

import 'MyThemeData.dart';
import 'data/Apimanger.dart';
import 'data/sourse_response.dart';

class home extends StatefulWidget {
  static const String routename = 'home';

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1, 18, 19, 18),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 289,
                width: 412,
                child: Column(
                  children: [
                    Image.network('placeholder'),
                    Row(
                      children: [
                        Image.network('placeholder'),
                        Text(
                          'movie name goes here',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'movie description goes here',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'New Releases',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(width: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          movieCard(),
                          SizedBox(width: 20),
                          movieCard(),
                          SizedBox(width: 20),
                          movieCard(),
                          SizedBox(width: 20),
                          movieCard(),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(width: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          movieCard(),
                          SizedBox(width: 20),
                          movieCard(),
                          SizedBox(width: 20),
                          movieCard(),
                          SizedBox(width: 20),
                          movieCard(),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: MyThemeData.primaryColor),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Home.png')),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search.png')),
                label: 'search'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Browse.png')),
                label: 'Browse'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Watchlist.png')),
                label: 'Watchlist'),
          ],
        ),
      ),
    );
  }

  Widget movieCard() => Container(
        width: 97,
        height: 180,
        color: Colors.black12,
        child: Image.network('placeholder'),
      );
}
