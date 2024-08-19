import 'package:flutter/material.dart';

import '../../../ReusableCode/text.dart';

//What is C
class WhatIsC extends StatelessWidget {
  const WhatIsC({super.key,this.color=Colors.pinkAccent});
  final Color ? color;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ooo(),
    );

      Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child:const ExpansionTile(title: Text('check'),
        children: [ListTile(title: Text('Hello'),)],
      )
      // text(
      //   name:'1. C is a procedure language and high level language.'
      //       '2. It is created by Dennis Richie in 1972 at AT&Bell Laboratory in California.\n'
      //       '3. It is a case sensitive and beginner friendly language',
      //   color: color,
      // ),
    );
  }
}
class ooo extends StatelessWidget {
  const ooo ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ExpansionTile(title: Text('check'),
          children: [
            Text('Hello')
          ],
        ),
    );
  }
}
