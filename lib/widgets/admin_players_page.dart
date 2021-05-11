import 'package:flutter/material.dart';

import '/resources/mafia_colors.dart';
import '/resources/mafia_icons.dart';
import 'edit_players_form.dart';

// ignore: use_key_in_widget_constructors
class AdminPageOfPlayers extends StatefulWidget {
  @override
  _AdminPageOfPlayersState createState() => _AdminPageOfPlayersState();
}

class _AdminPageOfPlayersState extends State<AdminPageOfPlayers> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    var stars = 1;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  color: MafiaColor.grey,
                  height: screenHeight * 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: MafiaColor.white,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://image.freepik.com/free-vector/mafia-logo_74829-29.jpg'))),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Никнейм',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const Text(
                                'Город',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const Text(
                                'Баланс',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  width: screenWidth * 0.6,
                                  height: screenHeight * 0.05,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: stars,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return const Icon(
                                          MafiaIcon.stars,
                                          size: 38,
                                          color: MafiaColor.red,
                                        );
                                      }))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.3,
                  color: MafiaColor.grey,
                  child: Center(
                    child: EditPlayersForm(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
