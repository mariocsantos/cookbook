import 'package:flutter/material.dart';
import './snackbar_page.dart';
import './orientation_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold
          ),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind')
        )
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page')
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
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer header'),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('Snackbar demo'),
              onTap: () {
                Navigator.pop(context);                    
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MySnackbarPage()) 
                );
              },
            ),
            ListTile(
              title: Text('Orientation list demo'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  OrientationList()) 
                );                 
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.pink[500]),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: Icon(Icons.flip)
        )
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
