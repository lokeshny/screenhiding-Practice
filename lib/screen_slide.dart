import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSlide extends StatefulWidget {
  const ScreenSlide({Key? key}) : super(key: key);

  @override
  State<ScreenSlide> createState() => _ScreenSlideState();
}

class _ScreenSlideState extends State<ScreenSlide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SliverAppBar(
          floating: true,
          title: Text('Menu'),
        )
      ],
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text('hi'),
          );
        },
      ),
    ));
  }
}

/*
return NestedScrollView(
headerSliverBuilder:(context, innerBoxIsScrolled) {
return Scaffold(

)
}, ,
child: Scaffold(
body: Column(
children: [
Container(
height: 200,
decoration: const BoxDecoration(
color: Colors.blue
),

),
Expanded(
child: ListView.builder(
itemCount: 10,
itemBuilder: (context, index) {
return const ListTile(
title: Text('Hi'),
);
},),
)
],
),
),
);
*/
