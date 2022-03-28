import 'package:flutter/material.dart';
import 'dart:convert' as convert;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var view = loginView();
    switch (state) {
      case 0: // login
        view = loginView();
        break;
      case 1: // main
        view = mainView();
        break;
      case 2:
        view = joinView();
        break;
    }

    return Scaffold(
      appBar: null,
      body: view
    );
  }

  void login() async{
    showError("test");

    // var postUrl = "${url}/api/return/box/item";
    // var u = Uri.parse(postUrl);
    // var body = convert.jsonEncode({'box': boxes});
    // var response = await http.post(u, headers: {"Content-Type": "application/json"},
    //     body: body);
    // if (response.statusCode == 200) {
    //   var res = convert.jsonDecode(convert.utf8.decode(response.bodyBytes));
    // }

    setState(() {
      state = 1;
    });
  }

  Widget loginView(){
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center, //정렬
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '전화번호 ',
                 style: TextStyle(fontSize: 20)
              ),
              SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Phone',
                    ),
                    // style: TextStyle(fontSize: 20)

                  )
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '비밀번호 ',
                style: TextStyle(fontSize: 20)
              ),
              SizedBox(
                width: 200,
                height: 30,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: 'Password',
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom( primary: Colors.white, backgroundColor: Colors.grey),
            onPressed: () {
            },
            child:
            Text("로그인", style: TextStyle(fontSize: 15)),
          ),
          SizedBox(height: 5),
          OutlinedButton(
            style: TextButton.styleFrom( primary: Colors.grey, backgroundColor: Colors.white),
            onPressed: () {
              setState(() {
                state = 2;
              });
            },
            child:
            Text("회원가입", style: TextStyle(fontSize: 15)),
          )
        ],
      ),
    );
  }


  Widget joinView(){
    return Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '이름 ',
                  style: TextStyle(fontSize: 20)
              ),
              SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Phone',
                    ),
                    // style: TextStyle(fontSize: 20)

                  )
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '전화번호 ',
                  style: TextStyle(fontSize: 20)
              ),
              SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    textAlign: TextAlign.center,
                    //obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Password',
                    ),
                  )
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '비밀번호 ',
                  style: TextStyle(fontSize: 20)
              ),
              SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Password',
                    ),
                  )
              )
            ],
          ),
          SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom( primary: Colors.white, backgroundColor: Colors.grey),
            onPressed: () {
              submit();
            },
            child:
            Text("회원가입 완료", style: TextStyle(fontSize: 15)),
          ),
        ]
    ));
  }

  void submit() async{
    Text("회원가입 test", style: TextStyle(fontSize: 15));
    setState(() {
      state = 2;
    });
  }

  Widget mainView(){
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  '전화번호 ',
                  style: TextStyle(fontSize: 30)
              ),
            ]
        ));
  }


  void showError(message){
    if(ModalRoute.of(context)?.isCurrent != true)
      Navigator.of(context, rootNavigator: true).pop();

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Column(
              children: <Widget>[
                new Text("오류"),
              ],
            ),
            //
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message,
                ),
              ],
            ),
            actions: <Widget>[
              new TextButton(
                child: new Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
   }
}
