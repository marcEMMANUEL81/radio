import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radio/screens/radio_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio/screens/settings.dart';
import 'package:radio/screens/homeMenu.dart';
import 'package:radio/constants/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List<Widget> _pages = [
    HomeMenuScreen(),
    const RadioScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (selectedIndex) {
          setState(() {
            _index = selectedIndex;
          });
        },
        backgroundColor: lightColor,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
        ),
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
              size: 26,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.radio,
              size: 26,
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.gear,
              size: 26,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
