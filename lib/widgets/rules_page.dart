import 'package:flutter/material.dart';
import 'package:myapp/resources/mafia_colors.dart';
import 'package:myapp/resources/mafia_icons.dart';

// ignore: use_key_in_widget_constructors
class PageOfRules extends StatefulWidget {
  @override
  _PageOfRulesState createState() => _PageOfRulesState();
}

class _PageOfRulesState extends State<PageOfRules>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                color: MafiaColor.white,
                child: TabBar(
                  controller: _controller,
                  tabs: [
                    const Icon(MafiaIcon.home, color: MafiaColor.black,),
                    const Icon(MafiaIcon.sunny, color: MafiaColor.black,),
                    const Icon(MafiaIcon.sunnyOutlined, color: MafiaColor.black,),
                    const Icon(MafiaIcon.travel, color: MafiaColor.black,),
                    const Icon(MafiaIcon.warning, color: MafiaColor.black,),
                    const Icon(MafiaIcon.sharp, color: MafiaColor.black,),
                  ],
                )),
            Container(
              height: screenHeight,
              width: screenWidth,
              child: TabBarView(
                controller: _controller,
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
