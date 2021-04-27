import 'package:flutter/material.dart';

import './club_members_page.dart';
import './club_profile_page.dart';
import './login.dart';
import './mafia_colors.dart';
import './mafia_icons.dart';
import './mafia_strings.dart';
import './players_page.dart';
import './rules_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  String _title = '';
  Widget _body = PageOfPlayers();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              appBarValue(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: MafiaColor.indigo,
        ),
        drawer: Builder(
          builder: (context) => Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                    decoration: BoxDecoration(color: MafiaColor.indigo),
                    child: Center(
                        child: Text(
                      MafiaString.mafia,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 60,
                          color: MafiaColor.orange),
                    ))),
                ListTile(
                  title: const Text(MafiaString.enterAsAdmin),
                  onTap: () =>
                      Navigator.pushNamed(context, MafiaString.loginRoute),
                )
              ],
            ),
          ),
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
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
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
      ),
      routes: {
        MafiaString.loginRoute: (context) => Login(),
      },
    );
  }

  String appBarValue() {
    setState(() {
      switch (_currentIndex) {
        case 0:
          _title = MafiaString.players;
          break;
        case 1:
          _title = MafiaString.members;
          break;
        case 2:
          _title = MafiaString.rules;
          break;
        case 3:
          _title = MafiaString.club;
          break;
      }
    });
    return _title;
  }

  Widget bodyValue() {
    setState(() {
      switch (_currentIndex) {
        case 0:
          _body = PageOfPlayers();
          break;
        case 1:
          _body = PageOfClubMembers();
          break;
        case 2:
          _body = PageOfRules();
          break;
        case 3:
          _body = PageOfClubProfile();
          break;
      }
    });
    return _body;
  }
}
