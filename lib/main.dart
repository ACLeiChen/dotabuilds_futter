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
        primaryColor: Colors.white,
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

  List<Widget> _bodySection = List(4);

  Widget _profileTab;

  Widget _analyzerTab;

  Widget _celebritiesTab;

  Widget _highlightsTab;

  _MyHomePageState() {
    //to do: move tab creation to a separate file
    _profileTab = Container(
      color: Colors.yellow,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                      color: Colors.red,
                      child: Icon(
                        Icons.star,
                        size: 50.0,
                      )),
                  Container(
                      width: 180.0,
                      height: 180.0,
                      color: Colors.red,
                      child: Icon(
                        Icons.star,
                        size: 50.0,
                      )),
                  Container(
                      color: Colors.red,
                      child: Icon(
                        Icons.star,
                        size: 50.0,
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.green,
                        child: Icon(
                          Icons.star,
                          size: 50.0,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.red,
                        child: Icon(
                          Icons.star,
                          size: 50.0,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.green,
                        child: Icon(
                          Icons.star,
                          size: 50.0,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.red,
                        child: Icon(
                          Icons.star,
                          size: 50.0,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.green,
                        child: Icon(
                          Icons.star,
                          size: 50.0,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

    _analyzerTab = Container(
      color: Colors.yellow,
      child: Center(child: Text("1")),
    );

    _celebritiesTab = Center(child: Text("2"));

    _highlightsTab = Center(child: Text("3"));

    _bodySection[0] = _profileTab;
    _bodySection[1] = _analyzerTab;
    _bodySection[2] = _celebritiesTab;
    _bodySection[3] = _highlightsTab;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: _bodySection[_bottomNavIndex],
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
}
