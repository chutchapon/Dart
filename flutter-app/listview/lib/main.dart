import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'List View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              // tileColor: Colors.green,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ck.jpeg'),
              ),
              // leading: Icon(Icons.contact_phone),
              title: Text('Chaos Knight'),
              subtitle: Text('Role : Offlane,Carry'),
              trailing: Wrap(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              // tileColor: Colors.yellow,
              // leading: Icon(Icons.contact_phone),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/medusa.jpeg'),
              ),
              title: Text('Medusa'),
              subtitle: Text('Role : Carry'),
              trailing: Wrap(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              // tileColor: Colors.red,
              // leading: Icon(Icons.contact_phone),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/invoker.jpeg'),
              ),
              title: Text('Invoker'),
              subtitle: Text('Role : Mid,Support'),
              trailing: Wrap(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              // tileColor: Colors.blue,
              // leading: Icon(Icons.contact_phone),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/morphing.jpeg'),
              ),
              title: Text('Morphing'),
              subtitle: Text('Role : Mid,Carry'),
              trailing: Wrap(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              // tileColor: Colors.blue,
              // leading: Icon(Icons.contact_phone),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/lich.jpeg'),
              ),
              title: Text('Lich'),
              subtitle: Text('Role : Support'),
              trailing: Wrap(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
