import 'package:flutter/material.dart';

// void main() {
//   print('starting app');

// var myApp = MaterialApp(
//     title: 'my first app', home: const Center(child: Text('hello world!!')));
// runApp(myApp);

//   runApp(MaterialApp(
//       title: 'my first app', home: const Center(child: Text('hello world!!'))));
// }
// void main() => runApp(MainUi());

// class MainUi extends StatelessWidget {
//   const MainUi({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'my first app', home: Center(child: Text('hello world!!')));
//   }
// }

void main() => runApp(MyCount());

class MainUi extends StatelessWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Hello World!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyBox(),
              Text(
                'Test Column 1!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyBox(),
              Text(
                'Test Column 2!',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyBox(),
              Text(
                'Test Column 3!',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyBox(),
              Image(
                image:
                    NetworkImage('https://i.imgur.com/D1I4fqC.jpg', scale: 3),
              )
            ],
          ),
        ),
      ),
      theme: ThemeData(primaryColor: Colors.black),
    );
  }
}

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];
    return Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.indigo,
      // width: 50,
      height: 25,
      child: Row(
        children: <Widget>[
          for (var i in text)
            Icon(Icons.access_alarm, color: Colors.white, size: 10.0),
          // Text(
          //   'Test Test Test Test',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 10.0,
          //   ),
          // ),
        ],
      ),
    );
  }
}

// class MyCount extends StatefulWidget {
//   MyCount({Key? key}) : super(key: key);

//   @override
//   _MyCountState createState() => _MyCountState();
// }

// class _MyCountState extends State<MyCount> {
//   int number = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Counter',
//       home: Center(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('My Counter'),
//           ),
//           body: Container(
//             // width: 150,
//             height: 80,
//             // color: Colors.purple,
//             child: Center(
//               child: Text(
//                 'Your Hit $number',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               setState(
//                 () {
//                   number++;
//                 },
//               );
//             },
//             child: Icon(Icons.add_circle),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyCount extends StatefulWidget {
  MyCount({Key? key}) : super(key: key);

  @override
  _MyCountState createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: increaseNumber,
              child: Icon(Icons.add_circle),
            ),
            FloatingActionButton(
              onPressed: decreaseNumber,
              child: Icon(Icons.remove_circle),
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('My Counter'),
        ),
        body: Container(
          height: 30,
          color: Colors.purple,
          child: Center(
            child: Text(
              'Your Hit $number',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number++;
    });
  }
}
