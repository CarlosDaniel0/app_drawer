import 'package:flutter/material.dart';
import './page1.dart';
import './page2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Drawer'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: index == 0 ? Colors.white : Colors.black,
                  ),
                  onTap: () {
                    setState(() {
                      index = 0;
                      Navigator.of(context).pop();
                    });
                  },
                  selectedTileColor: Colors.blue[400],
                  selected: index == 0 ? true : false,
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: index == 0 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.router,
                    color: index == 1 ? Colors.white : Colors.black,
                  ),
                  onTap: () {
                    setState(() {
                      index = 1;
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page1()));
                    });
                  },
                  selectedTileColor: Colors.blue[400],
                  selected: index == 1 ? true : false,
                  title: Text(
                    'Página 1',
                    style: TextStyle(
                        color: index == 1 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Card(
                child: ListTile(
                  onTap: () {
                    setState(() {
                      index = 2;
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page2()));
                    });
                  },
                  selectedTileColor: Colors.blue[400],
                  selected: index == 2 ? true : false,
                  title: Text('Página 2',
                      style: TextStyle(
                          color: index == 2 ? Colors.white : Colors.black)),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
