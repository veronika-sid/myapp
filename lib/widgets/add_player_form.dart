import 'package:flutter/material.dart';
import '../resources/mafia_colors.dart';
import '../resources/mafia_icons.dart';

import '../resources/mafia_strings.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class AddPlayerForm extends StatefulWidget {
  String dropdownValue = MafiaString.player;

  @override
  _AddPlayerFormState createState() => _AddPlayerFormState();
}

class _AddPlayerFormState extends State<AddPlayerForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
    );
  }

  Widget nickname() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: MafiaString.nickname,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return MafiaString.enterNickname;
        }
        return null;
      },
    );
  }

  Widget city() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: MafiaString.city,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return MafiaString.enterCity;
        }
        return null;
      },
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
            value: MafiaString.player,
            child: Text(MafiaString.player),
          ),
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
            widget.dropdownValue = value!;
          });
        },
        value: widget.dropdownValue,
        hint: const Text(MafiaString.selectRole),
        icon: const Icon(MafiaIcon.dropDownMenuArrow),
        iconSize: 32,
        isExpanded: true,
      ),
    );
  }

  Widget balance() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: MafiaString.balance,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return MafiaString.enterBalance;
        }
        return null;
      },
    );
  }

  Widget createPlayer() {
    return ElevatedButton(
      child: const Text(MafiaString.addPlayer),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          Navigator.pop(context);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MafiaColor.red)),
    );
  }
}
