import 'package:flutter/material.dart';
import 'package:movieapp_200644/media_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Movie App- 200291"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new DrawerHeader(child: new Material()),
          new ListTile(
            title: new Text("Peliculas"),
            trailing: new Icon(Icons.local_movies),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Televisión"),
            trailing: new Icon(Icons.live_tv),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Cerrar"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      )),
      body: new PageView(
        children: <Widget>[
          new MediaList()
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: "Pupulares"),
      new BottomNavigationBarItem(
          icon: Icon(Icons.update), label: "Proximamente"),
      new BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favoritos")
    ];
  }
}
