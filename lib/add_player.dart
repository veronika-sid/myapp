import 'package:flutter/material.dart';

import './mafia_colors.dart';
import './mafia_icons.dart';
import './mafia_strings.dart';

// ignore: use_key_in_widget_constructors
class AddPlayer extends StatefulWidget {
  @override
  _AddPlayerState createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  String _value;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MafiaColor.indigo,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          margin: EdgeInsets.symmetric(
              vertical: screenWidth * 0.6, horizontal: screenHeight * 0.05),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: MafiaColor.white,
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              nickname(),
              city(),
              balance(),
              const SizedBox(height: 20),
              role(),
              const SizedBox(height: 10),
              createPlayer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget nickname() {
    return const TextField(
      decoration: InputDecoration(
        labelText: MafiaString.nickname,
      ),
    );
  }

  Widget city() {
    return const TextField(
      decoration: InputDecoration(
        labelText: MafiaString.city,
      ),
    );
  }

  Widget role() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        items: [
          const DropdownMenuItem<String>(
            value: MafiaString.president,
            child: Text(MafiaString.president),
          ),
          const DropdownMenuItem<String>(
            value: MafiaString.councilMember,
            child: Text(MafiaString.councilMember),
          ),
          const DropdownMenuItem<String>(
            value: MafiaString.member,
            child: Text(
              MafiaString.member,
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
        hint: const Text(MafiaString.selectRole),
        icon: const Icon(MafiaIcon.dropDownMenuArrow),
        iconSize: 32,
        isExpanded: true,
      ),
    );
  }

  Widget balance() {
    return const TextField(
      decoration: InputDecoration(
        labelText: MafiaString.balance,
      ),
    );
  }

  Widget createPlayer() {
    return ElevatedButton(
      child: const Text(MafiaString.addPlayer),
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MafiaColor.red)),
    );
  }
}
