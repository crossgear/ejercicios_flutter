import 'dart:io';

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://amp.insider.com/images/5d001393b7640142011751c9-750-562.jpg'),
              radius: 20,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('KR'),
              backgroundColor: Colors.green[700],
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://static.parade.com/wp-content/uploads/2019/05/KeanurReevesOpener-FTR.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),
    );
  }
}