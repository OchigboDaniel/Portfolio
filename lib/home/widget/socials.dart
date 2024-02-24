import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../function/github.dart';

class Sociails extends StatelessWidget {
  const Sociails({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: InkWell(
              onTap: (){
                launch('https://www.linkedin.com/in/daniel-ochigbo-2a77b7229');
              },
              child: Icon(EvaIcons.linkedin, color: Colors.blue,)),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: InkWell(
            onTap: (){
              launch('https://github.com/OchigboDaniel');
            },
              child: Icon(EvaIcons.github)),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: InkWell(
            onTap: (){
            },
              child: InkWell(
                onTap: (){

                },
                  child: Icon(EvaIcons.emailOutline, color: Colors.pink,))),
        ),
      ],
    );
  }
}
