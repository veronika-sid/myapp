import 'package:flutter/material.dart';

import '/resources/mafia_colors.dart';
import '/resources/mafia_icons.dart';
import '/resources/mafia_strings.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class EditPlayersForm extends StatefulWidget {
  String dropdownValue = MafiaString.player;

  @override
  _EditPlayersFormState createState() => _EditPlayersFormState();
}

class _EditPlayersFormState extends State<EditPlayersForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: MafiaColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Icon(
                    Icons.remove,
                    color: MafiaColor.red,
                  )),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: '0',
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      border: InputBorder.none),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                ),
                margin: const EdgeInsets.all(10),
                height: screenHeight * 0.05,
                width: screenWidth * 0.15,
                decoration: BoxDecoration(
                  color: MafiaColor.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: MafiaColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Icon(
                    Icons.add,
                    color: MafiaColor.green,
                  )),
            ],
          ),
          Container(width: screenWidth * 0.55, child: role()),
          Container(
            width: screenWidth * 0.55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  MafiaIcon.stars,
                  size: 38,
                  color: MafiaColor.red,
                ),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: '0',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                        border: InputBorder.none),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.all(10),
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.15,
                  decoration: BoxDecoration(
                    color: MafiaColor.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(MafiaString.save),
            style: ElevatedButton.styleFrom(
                primary: MafiaColor.green,
                textStyle: const TextStyle(fontSize: 18,),
                minimumSize: Size(screenWidth * 0.4, screenHeight * 0.05)),
          )
        ],
      ),
    );
  }

  Widget role() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonHideUnderline(
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
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: MafiaColor.black,
          ),
        ),
      ),
    );
  }
}
