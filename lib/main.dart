import 'package:flutter/material.dart'; //material Design을 import 함.

void main() { //앱 시작 부분
  runApp(MyApp());
}

//시작 클래스. 머터리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Studying'),  //표시할 화면의 인스턴스
    );
  }
}

//시작 클래스가 실제로 표시하는 클래스. 앱 화면부분
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// ignore: slash_for_doc_comments
/**
    위 MyHomePage 클래스의 상태를 나타내는 State 클래스
    주로 _MyHomePageState에 모든 코드를 작성함!
 **/

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; //화면에 표시할 값인 카운터 숫자

  //counter 변수를 1 증가시키고 화면을 다시 그리는 메서드
  void _incrementCounter() {
    setState(() { //화면을 다시 그리도록 하는 함수. StatefulWidget만 가능
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  var isChecked = false;

  //화면에 UI를 그리는 메서드. 그려질 위젯을 반환
  @override
  Widget build(BuildContext context) {
    return Scaffold(  //머터리얼 디자인 기본 뼈대 위젯(상단 앱바같은거 들어감)
      appBar: AppBar( //상단 앱바
        title: Text(widget.title),
      ),
      body: Column(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              width: 1000,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
            ),
            Text(
              'Hello! This is my first app! by Flutter!',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
              ),
            ),
            Image.network('https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1xx.png'),
            LinearProgressIndicator(),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), //외곽선
                  labelText: '여기에 입력해보세요!!',
                )
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('GG'),
              ],
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), //외곽선
                  labelText: '여기에 입력해보세요!!',
                )
            ),
          ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, //클릭 시(onPressed) _incrementCounter() 메서드 실행
        tooltip: 'Increment',
        child: Icon(Icons.add), //상단 앱바
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
