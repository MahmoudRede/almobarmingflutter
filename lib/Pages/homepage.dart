import 'package:flutter/material.dart';
import 'package:flutter_flutterinternship2021/Constants/palette.dart';
import 'package:flutter_flutterinternship2021/Constants/parameters.dart';
import 'package:flutter_flutterinternship2021/widgets/circleButton.dart';

class MyHomePage extends StatefulWidget {

  final String title;

  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
// --------------------------------------
class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  int _counter = FixedValues.startNumber;

  void _incrementCounter() {
    setState(() {
      // _counter++;
      _counter = _counter + FixedValues.increaseValue ;
    });
  }
  void myFunc(){
    print("AlSayed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, ),
        actions: <Widget>[
          CircleButton(icon: Icons.search, iconSize: 30.0, iconColor: Palette.APPBAR_IconsCOLOR, bgColor: Palette.APPBAR_IconsBGCOLOR, onPressed: (){print("Search Pressed from Widget");},),
          CircleButton(icon: Icons.camera, iconSize: 30.0, iconColor: Colors.black, bgColor: Palette.APPBAR_IconsBGCOLOR, onPressed: (){print("Camera");},),
          CircleButton(icon: Icons.category, iconSize: 30.0, iconColor: Palette.APPBAR_IconsCOLOR, bgColor: Palette.APPBAR_IconsBGCOLOR, onPressed: (){print("Catalog");},),
          // CircleButton(icon: Icons.search, iconSize: 35.0, iconColor: Palette.LogoSecondColor, bgColor: Palette.LogoFirstColor, onPressed: (){print("Mostafa");},),

          // Container(
          //   margin: EdgeInsets.all(6.0),
          //   decoration: BoxDecoration(
          //     color: Palette.APPBAR_IconsBGCOLOR,
          //     shape: BoxShape.circle,
          //   ),
          //   child: IconButton(
          //       icon: Icon(Icons.search),
          //       iconSize: 30.0,
          //       color: Palette.APPBAR_IconsCOLOR,
          //       onPressed: (){
          //         print("Search Pressed");
          //       },
          //   ),
          // )
        ],
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed:',
              style: TextStyle(color: Palette.TextColor),
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.red,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}