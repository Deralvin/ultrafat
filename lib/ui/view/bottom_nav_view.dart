import 'package:flutter/material.dart';
import 'package:ultrafat/constants/theme.dart';
import 'package:ultrafat/ui/view/artiket_view.dart';
import 'package:ultrafat/ui/view/bmi_view.dart';
import 'package:ultrafat/ui/view/profile_view.dart';
import 'package:ultrafat/ui/view/score_view.dart';
class BottomNavView extends StatefulWidget {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  _BottomNavViewState createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _currentIndex = 0;
  final List _children = [

    ArtikelView(),
    BmiView(),
    ProfileView(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        backgroundColor: blue,
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex, // new a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
              title:Container()
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calculate),
              title:Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title:Container()
          )
        ],
      ),
    );
  }
}
