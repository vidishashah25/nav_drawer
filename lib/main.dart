import 'package:flutter/material.dart';
import 'second.dart';

void main(){
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Drawer')),
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text('Vidisha Shah'),
                accountEmail: new Text('v@gmail.com'),
                currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26,child: new Text('V'),),
                decoration: new BoxDecoration(color: Colors.orange),
            ),

            new ListTile(title: new Text('Page 1'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext)=>new op('Page 1')))),
            new ListTile(title: new Text('Page 2'),
              trailing: new Icon(Icons.arrow_forward),
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext)=>new op('Page 2')))
            ),
            new ListTile(title: new Text('close'),trailing: new Icon(Icons.arrow_forward),onTap: (){Navigator.pop(context);}),
          ],
        ),
      ),
    );
  }
}
