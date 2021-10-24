import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class pageArguemnts {
  final String pageTitle;
  final String message;
  pageArguemnts(this.pageTitle, this.message);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => FirstScreen(),
        //'/2nd': (context) => SecondScreen(),
        SecondScreen.routname: (context) => SecondScreen(),
        ThirdScreen.routname: (context) => ThirdScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is First Screen',
              style: TextStyle(fontSize: 26, color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/2nd');
                    Navigator.pushNamed(context, SecondScreen.routname,
                        arguments:
                            pageArguemnts('from 1st screen', 'hello page 2nd'));
                  },
                  child: Text('Go To 2nd screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/2nd');
                    Navigator.pushNamed(context, ThirdScreen.routname);
                  },
                  child: Text('Go To 3nd screen'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  static const routname = 'second-screen';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as pageArguemnts;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.pageTitle),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              args.message,
              style: TextStyle(fontSize: 26, color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go To Previous Screen'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(
                        context, ThirdScreen.routname);
                    print('result = {$result}');
                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(SnackBar(
                        content: Text(result.toString()),
                      ));
                  },
                  child: Text('Go To 3nd screen'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  static const routname = 'third-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Third creen',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Yes! Form 3rd');
                  },
                  child: Text('Yes!'),
                  //child: Text('Go To 2nd Screen'),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'No! Form 3rd');
                  },
                  child: Text('No!'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil(ModalRoute.withName('/'));
              },
              child: Text('Go To 1st Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
