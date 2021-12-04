import 'package:first_app/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// void main() {
//     runApp(
//       demoApp()
//     );
// }

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget {
  var s = _DemoAppState();
  @override
  State<StatefulWidget> createState() {
    return _DemoAppState();
  }
  
}

class _DemoAppState extends State<DemoApp> { 
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar :  _returnHeader(),
        body:  _returnBody(),
      ),
    );
  }
  
  _returnHeader(){
  return AppBar(
    title:  Text(
      'Demo App'
    ),
  );
}

_returnBody(){
    var questions = ["what's your favourite color"
  ,"What's your favourite animal"];
  return Column(children:  [
    Questions(questions.elementAt(_questionIndex),
    ),
    RaisedButton(child: Text('yes'),
    onPressed: _printmsg
    ),
    RaisedButton(child: Text('no'),
    onPressed: _printmsg
    ),
    // ElevatedButton(onPressed: printmsg, 
    // child: Text('yep'),
    // ),
    // ),
  ],
  );
}

 _printmsg(){
  setState(() {
  print('buttonpressed');
  _questionIndex = _questionIndex + 1;
  print(_questionIndex);
  });
 
}

}


