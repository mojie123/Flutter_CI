import 'package:flutter/material.dart';
import 'package:my_flutter/tool/NetManager.dart';
import 'cloud_disk.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  TextEditingController _account =  TextEditingController(text:'13726264464');
  TextEditingController _password =  TextEditingController(text:'123456');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("domo"),
      ),
      body: Container(
          child: Column(
            children: [
              TextField(controller: _account,),
              TextField(controller: _password,),
              FlatButton(
                  color: Colors.yellow,
                  child: Text('登录'),
                  onPressed: () {
                    print('点击了按钮');
                     NetManager().login(_account.text, _password.text);
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (BuildContext context) =>CloudDisk()));

                  })
            ],
          )),
    );
  }
}
