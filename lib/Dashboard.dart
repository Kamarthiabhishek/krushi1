import 'package:flutter/material.dart';
import 'package:krushi/screens/PlantGuide.dart';
import 'package:krushi/screens/Rentals.dart';
import 'package:krushi/screens/SmartConnect.dart';
import 'package:krushi/screens/YieldPrediction.dart';
import 'package:krushi/screens/profileDashboard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const Rentals(),
    const Crop(),
    const Guide(),
    const Connect(),
    Profile(),
  ];

  void _onPageSelected(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentPageIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _CustomNavButton(0, Icons.build_outlined, "Rentals"),
                _CustomNavButton(1, Icons.local_florist, "Yeild Prediction"),
                _CustomNavButton(2, Icons.school_outlined, "Plant Guide"),
                _CustomNavButton(
                    3, Icons.shopping_cart_outlined, "Smart Connect"),
                _CustomNavButton(4, Icons.person_4_outlined, "Profile"),
              ],
            ),
          ),
        ));
  }

  Widget _CustomNavButton(int index, IconData iconData, String label) {
    return InkWell(
      onTap: () => _onPageSelected(index),
      child: Container(
        child: Row(
          children: [
            IconButton(
              onPressed: () => _onPageSelected(index),
              icon: Icon(iconData),
              color: _currentPageIndex == index ? Colors.amber : Colors.white,
            ),
            Text(
              _currentPageIndex == index ? label : "",
              style: TextStyle(
                  color:
                      _currentPageIndex == index ? Colors.amber : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
