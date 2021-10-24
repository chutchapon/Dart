import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final nameController = TextEditingController();
  int? _radioData1 = 1;
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;
  bool? _isChecked4 = false;
  bool? _isChecked5 = false;
  int? Dropvalue = 1;
  // int _radioData2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Input Form')),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name : ',
                icon: Icon(Icons.person),
                hintText: 'Please input your name',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _radioData1,
                  onChanged: (value) {
                    setState(
                      () {
                        _radioData1 = value;
                      },
                    );
                  },
                ),
                Text('select data = 1'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<int>(
                  value: 2,
                  groupValue: _radioData1,
                  onChanged: (value) {
                    setState(
                      () {
                        _radioData1 = value;
                      },
                    );
                  },
                ),
                Text('select data = 2'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<int>(
                  value: 3,
                  groupValue: _radioData1,
                  onChanged: (value) {
                    setState(
                      () {
                        _radioData1 = value;
                      },
                    );
                  },
                ),
                Text('select data = 3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<int>(
                  value: 4,
                  groupValue: _radioData1,
                  onChanged: (value) {
                    setState(
                      () {
                        _radioData1 = value;
                      },
                    );
                  },
                ),
                Text('select data = 4'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<int>(
                  value: 5,
                  groupValue: _radioData1,
                  onChanged: (value) {
                    setState(
                      () {
                        _radioData1 = value;
                      },
                    );
                  },
                ),
                Text('select data = 5'),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Checkbox(
                    value: _isChecked1,
                    onChanged: (value) {
                      setState(
                        () {
                          _isChecked1 = value;
                        },
                      );
                    },
                  ),
                  title: Text('test 1'),
                  subtitle: Text('sub test'),
                  trailing: Icon(Icons.home),
                ),
                ListTile(
                  leading: Checkbox(
                    value: _isChecked2,
                    onChanged: (value) {
                      setState(
                        () {
                          _isChecked2 = value;
                        },
                      );
                    },
                  ),
                  title: Text('test 2'),
                  subtitle: Text('sub test'),
                  trailing: Icon(Icons.person),
                ),
                ListTile(
                  leading: Checkbox(
                    value: _isChecked3,
                    onChanged: (value) {
                      setState(
                        () {
                          _isChecked3 = value;
                        },
                      );
                    },
                  ),
                  title: Text('test 3'),
                  subtitle: Text('sub test'),
                  trailing: Icon(Icons.work),
                ),
                ListTile(
                  leading: Checkbox(
                    value: _isChecked4,
                    onChanged: (value) {
                      setState(
                        () {
                          _isChecked4 = value;
                        },
                      );
                    },
                  ),
                  title: Text('test 4'),
                  subtitle: Text('sub test'),
                  trailing: Icon(Icons.alarm_rounded),
                ),
                ListTile(
                  leading: Checkbox(
                    value: _isChecked5,
                    onChanged: (value) {
                      setState(
                        () {
                          _isChecked5 = value;
                        },
                      );
                    },
                  ),
                  title: Text('test 5'),
                  subtitle: Text('sub test'),
                  trailing: Icon(Icons.ramen_dining),
                ),
              ],
            ),
            DropdownButton<int>(
              value: Dropvalue,
              onChanged: (value) {
                setState(() {
                  Dropvalue = value;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text('Dropdown Test 1'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Dropdown Test 2'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Dropdown Test 2'),
                  value: 3,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // print('Text Field (Name) => ' + nameController.text);
                  // print(
                  //   'Radio Data (Int)=>' + _radioData1.toString(),
                  // );
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Column(
                          children: [
                            Text('Text Feild = ' + nameController.text),
                            Text(
                              'Radio Button = ' + _radioData1.toString(),
                            ),
                            Text(
                              'test 1 = ' + _isChecked1.toString(),
                            ),
                            Text(
                              'test 2 = ' + _isChecked2.toString(),
                            ),
                            Text(
                              'test 3 = ' + _isChecked3.toString(),
                            ),
                            Text(
                              'test 4 = ' + _isChecked4.toString(),
                            ),
                            Text(
                              'test 5 = ' + _isChecked5.toString(),
                            ),
                            Text(
                              'Drop Down Value = ' + Dropvalue.toString(),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text('Click'),
              ),
            ),
            // Radio<int>(
            //   value: 1,
            //   groupValue: _radioData2,
            //   onChanged: (value) {
            //     setState(
            //       () {
            //         _radioData2 = value!;
            //       },
            //     );
            //   },
            // ),
            // Radio<int>(
            //   value: 2,
            //   groupValue: _radioData2,
            //   onChanged: (value) {
            //     setState(
            //       () {
            //         _radioData2 = value!;
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
