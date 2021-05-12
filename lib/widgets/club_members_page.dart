import 'package:flutter/material.dart';
import '../resources/mafia_colors.dart';

// ignore: use_key_in_widget_constructors
class PageOfClubMembers extends StatefulWidget {
  @override
  _PageOfClubMembersState createState() => _PageOfClubMembersState();
}

class _PageOfClubMembersState extends State<PageOfClubMembers> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MafiaColor.grey),
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            height: screenHeight * 0.6,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Image.network(
                        'https://image.freepik.com/free-vector/mafia-logo_74829-29.jpg'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Никнейм',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(
                          'Роль',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
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
