import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:projet_tourisme/page1.dart';
import 'package:projet_tourisme/screens/views/Home_View.dart';
import 'package:projet_tourisme/screens/views/list_hastag_view.dart';
import 'package:projet_tourisme/screens/views/liste.dart';
import 'package:projet_tourisme/screens/views/reglage.dart';
import 'package:projet_tourisme/service_firebase/authenfirebase.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({Key? key}) : super(key: key);

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  final AuthenticationService _auth = AuthenticationService();
  final PageController _pageController = PageController(keepPage: false);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController;
    dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0.0,
        title: Text("MonHotel"),
        actions: <Widget>[
          TextButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(
                Icons.logout_sharp,
                color: Colors.black,
              ),
              label: Text(
                "Logout",
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: PageView(
        onPageChanged: (index) {
          if (index < 4) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        controller: _pageController,
        children: [
          page1(),
          // const HomeView(),
          const ListHashtagView(),
          const reglage(),
          const Liste(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(backgroundColor: Colors.black),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (_currentIndex < 4) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
              _pageController.jumpToPage(_currentIndex);
            }
          },
          fixedColor: Colors.amberAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.home,
                  color: Colors.black,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.bookmark,
                  color: Colors.black,
                ),
                label: "Mon cahier"),
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.setting,
                  color: Colors.black,
                ),
                label: "R??glage"),
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.paper,
                  color: Colors.black,
                ),
                label: "Liste"),
          ],
        ),
      ),
    );
  }
}
