import 'package:flutter/material.dart';

import 'resource/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dota Builds',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Pag\e'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _bottomNavIndex = 0;

  Widget _bodySection;

  Widget _profileTab = Container(
    child: Column(
      children: <Widget>[
        Stack(
          
        ),
        Column()
      ],
    ),
  );

  Widget _analyzerTab;

  Widget _celebritiesTab;

  Widget _highlightsTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("data111")),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomNavIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.redAccent,
              ),
              title: Text(
                Strings.bottomNavigationBarItem_Profile,
                style: TextStyle(color: Colors.black54),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.compare,
                color: Colors.redAccent,
              ),
              title: Text(
                Strings.bottomNavigationBarItem_Analyzer,
                style: TextStyle(color: Colors.black54),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.redAccent,
              ),
              title: Text(
                Strings.bottomNavigationBarItem_Celebrities,
                style: TextStyle(color: Colors.black54),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
                color: Colors.redAccent,
              ),
              title: Text(
                Strings.bottomNavigationBarItem_Highlights,
                style: TextStyle(color: Colors.black54),
              )),
        ],
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }

  void _switchBody(int index) {
    switch (index) {
      case 0:
        _bodySection = _profileTab;
        break;

      case 1:
        _bodySection = _analyzerTab;
        break;

      case 2:
        _bodySection = _celebritiesTab;
        break;

      case 3:
        _bodySection = _highlightsTab;
        break;
      default:
        _bodySection = _profileTab;
    }
  }
}
