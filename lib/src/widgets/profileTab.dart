import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileTab extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                      // color: Colors.red,
                      child: IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: _gotoMoreGamesPages,
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
                      // color: Colors.red,
                      child: IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: _refreshProfileTab,
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
  }

  void _refreshProfileTab() {}

  void _gotoMoreGamesPages() {}

}