import 'package:flutter/material.dart';
import 'package:login_app_task/presentation/animation/animation_page.dart';
import 'package:login_app_task/presentation/home/home_page.dart';
import 'package:login_app_task/presentation/settings/settings_page.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late List<BottomNavigationBarItem> navList;
  late List bodyList;
  int index = 0;

  @override
  initState() {
    navList = const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.animation), label: "Animation"),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
    ];
    bodyList = const [HomePage(), AnimationPage(), SettingsPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: bodyList[index],
        bottomNavigationBar: BottomNavigationBar(
          items: navList,
          onTap: (newIndex){
            setState((){
              index = newIndex;
            });
          },
          currentIndex: index,
        ),
      ),
    );
  }
}
