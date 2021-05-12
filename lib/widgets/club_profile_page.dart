import 'package:flutter/material.dart';
import '../pages/login.dart';
import '../resources/mafia_colors.dart';
import '../resources/mafia_strings.dart';

// ignore: use_key_in_widget_constructors
class PageOfClubProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://the-mafia.net/sites/default/files/dlya_kardi_bel.png'))),
            width: screenWidth * 0.9,
            height: screenHeight * 0.4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(MafiaString.instagramButton),
                    style: ElevatedButton.styleFrom(
                        primary: MafiaColor.purple,
                        textStyle: const TextStyle(fontSize: 18),
                        minimumSize:
                            Size(screenWidth * 0.4, screenHeight * 0.05)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(MafiaString.websiteButton),
                    style: ElevatedButton.styleFrom(
                        primary: MafiaColor.darkOrange,
                        textStyle: const TextStyle(fontSize: 18),
                        minimumSize:
                            Size(screenWidth * 0.4, screenHeight * 0.05)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(MafiaString.privatButton),
                    style: ElevatedButton.styleFrom(
                        primary: MafiaColor.green,
                        textStyle: const TextStyle(fontSize: 18),
                        minimumSize:
                            Size(screenWidth * 0.4, screenHeight * 0.05)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(MafiaString.monobankButton),
                    style: ElevatedButton.styleFrom(
                        primary: MafiaColor.black,
                        textStyle: const TextStyle(fontSize: 18),
                        minimumSize:
                            Size(screenWidth * 0.4, screenHeight * 0.05)),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, Login.loginPage),
            style: ElevatedButton.styleFrom(
                primary: MafiaColor.indigo,
                textStyle: const TextStyle(fontSize: 18),
                minimumSize: Size(screenWidth * 0.6, screenHeight * 0.05)),
            child: const Text(MafiaString.enterAsAdmin),
          ),
        ],
      ),
    );
  }
}
