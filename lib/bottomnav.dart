import 'package:flutter/material.dart';
import 'home.dart';
import 'riwayat.dart';
import 'event.dart';
import 'forum.dart';
import 'profil.dart';

class bottomNav extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<bottomNav> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new HomePage(), new RiwayatPage(), new EventPage(), new ForumPage(), new ProfilPage()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home_outlined,
              color: Color.fromRGBO(46, 138, 23, 1),
              size: 26,
            ),
            icon: new Icon(
              Icons.home_outlined,
              color: Colors.grey,
              size: 26,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.access_time,
              color: Color.fromRGBO(46, 138, 23, 1),
              size: 24,
            ),
            icon: new Icon(
              Icons.access_time,
              color: Colors.grey,
              size: 24,
            ),
            label: "Riwayat",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.calendar_today_outlined,
              color: Color.fromRGBO(46, 138, 23, 1),
              size: 22,
            ),
            icon: new Icon(
              Icons.calendar_today_outlined,
              color: Colors.grey,
              size: 22,
            ),
            label: "Event",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.messenger_outline_rounded,
              color: Color.fromRGBO(46, 138, 23, 1),
              size: 22,
            ),
            icon: new Icon(
              Icons.messenger_outline_rounded,
              color: Colors.grey,
              size: 22,
            ),
            label: "Forum",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person_outline,
              color: Color.fromRGBO(46, 138, 23, 1),
              size: 26,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 26,
            ),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
