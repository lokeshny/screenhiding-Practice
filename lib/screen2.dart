import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('data'),
          expandedHeight: 300,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                    childCount: 20,(context, index) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            height: 200,
            child: const Text('hello'),
          );
        }))
      ],
    );
  }
}
