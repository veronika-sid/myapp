import 'package:flutter/material.dart';

import '../resources/mafia_colors.dart';
import '../resources/mafia_icons.dart';
import '../resources/mafia_strings.dart';
import '../widgets/club_members_page.dart';
import '../widgets/club_profile_page.dart';
import '../widgets/players_page.dart';
import '../widgets/rules_page.dart';


// ignore: must_be_immutable, use_key_in_widget_constructors
class MainPage extends StatefulWidget {
  int currentIndex = 0;
  String title = '';
  Widget body = PageOfPlayers();
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            appBarValue(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: MafiaColor.indigo,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        unselectedItemColor: MafiaColor.white,
        backgroundColor: MafiaColor.indigo,
        fixedColor: MafiaColor.orange,
        onTap: (int index) {
          setState(() {
            widget.currentIndex = index;
          });
        },
        currentIndex: widget.currentIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(MafiaIcon.players),
            label: MafiaString.players,
            activeIcon: Icon(
              MafiaIcon.players,
              size: 35,
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(MafiaIcon.members),
            label: MafiaString.members,
            activeIcon: Icon(
              MafiaIcon.members,
              size: 35,
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(MafiaIcon.rules),
            label: MafiaString.rules,
            activeIcon: Icon(
              MafiaIcon.rules,
              size: 35,
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(MafiaIcon.club),
            label: MafiaString.club,
            activeIcon: Icon(
              MafiaIcon.club,
              size: 35,
            ),
          )
        ],
      ),
      body: bodyValue(),
    );
  }
  String appBarValue() {
    setState(() {
      switch (widget.currentIndex) {
        case 0:
          widget.title = MafiaString.players;
          break;
        case 1:
          widget.title = MafiaString.members;
          break;
        case 2:
          widget.title = MafiaString.rules;
          break;
        case 3:
          widget.title = MafiaString.club;
          break;
      }
    });
    return widget.title;
  }

  Widget bodyValue() {
    setState(() {
      switch (widget.currentIndex) {
        case 0:
          widget.body = PageOfPlayers();
          break;
        case 1:
          widget.body = PageOfClubMembers();
          break;
        case 2:
          widget.body = PageOfRules();
          break;
        case 3:
          widget.body = PageOfClubProfile();
          break;
      }
    });
    return widget.body;
  }
}
