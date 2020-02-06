import 'package:flutter/material.dart';
import 'group_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('買い物リスト'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        settings: RouteSettings(name: "/groups"),
                        builder: (BuildContext context) => GroupListPage(),
                        fullscreenDialog: true,
                      )
                    );
                  },
                ),
                RaisedButton(
                  child: Text('データ連携'),
                  onPressed: (){
                    print('coordinate');
                  },
                )
              ],
            )
          ],
        ),
      )
    );
  }
}