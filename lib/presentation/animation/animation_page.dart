import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {

  double heightOrWidth = 100;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
              duration: const Duration(milliseconds: 500),
              height: heightOrWidth,
              width: heightOrWidth,
            ),
            IconButton(
              iconSize: 60,
                onPressed: () {
                 setState((){
                   if(heightOrWidth==100){
                     heightOrWidth = 200;
                     color = Colors.blue;
                   }else{
                     heightOrWidth = 100;
                     color = Colors.red;
                   }
                 });
                },
                icon: const Icon(
                  Icons.change_circle_outlined,
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
