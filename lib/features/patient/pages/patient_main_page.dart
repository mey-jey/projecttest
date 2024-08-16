import 'package:doctor_app/features/patient/pages/patient_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientMainPage extends StatefulWidget {
  const PatientMainPage({super.key});

  @override
  State<PatientMainPage> createState() => _PatientMainPageState();
}

class _PatientMainPageState extends State<PatientMainPage> {
  int _selected_index = 0;

  List<Widget> _pages = const [
    PatientHomePage(),
    PatientHomePage(),
    PatientHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff007AFF),
        currentIndex: _selected_index,
        iconSize: 24,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        elevation: 0,
        onTap: (index) {
          setState(() {
            _selected_index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_fill,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.calendar,
            ),
            label: 'Scheduls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages.elementAt(_selected_index),
    );
  }
}
