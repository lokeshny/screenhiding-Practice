import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  ScrollController scroll = ScrollController();

  double topp = 300;

  @override

  void initState() {
    // TODO: implement initState
    scroll.addListener(() {

      // print(scroll.offset);
      //
      // print(scroll.position.axis.index);
      // print(scroll.position.pixels.toString());
      // print('1111111111111111');
      if(topp>0){
        setState(() {
          topp = topp - scroll.offset;
          if(topp<0){
            topp = 0;
          }
          print(topp);
        });
      }

    });
    super.initState();
  }
  @override
  void dispose() {
    scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: topp,
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
          ),
          Positioned(
            bottom: 0,
            top: topp ,
            child: AnimatedContainer(
               duration: Duration(seconds: 2),

              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.red
              ),
              child:ListView.builder(
                controller: scroll,
                itemCount: 100,
                itemBuilder: (context, index) {
                return ListTile(
                  title: Text('hi'),
                );
              },),

            ),
          )
        ],
      ),
    );
  }
}
