import 'package:flutter/material.dart';
import 'MyThemeData.dart';

class BrowseScreen extends StatefulWidget {
  static const String routename = 'browse';

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  int currentIndex = 0;

  List<Image> content = [
    Image.asset('assets/images/material movie icon.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              child: Text('Browse Category',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                  textAlign: TextAlign.left),
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                crossAxisCount: 2,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: content[0],
                  ),
                ],
              ),
            ),
          ],
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
}
