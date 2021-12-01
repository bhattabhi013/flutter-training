import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// void main() {
//     runApp(
//       demoApp()
//     );
// }

void main() => runApp(demoApp());

class demoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar :  returHeader(),
        body:  returnBody(),
      ),
    );
  }
}

returHeader(){
  return AppBar(
    title:  Text(
      'Demo App'
    ),
  );
}

returnBody(){
    var questions = ["what's your favourite color"
  ,"What's your favourite animal"];
  return Column(children:  [
    Text(questions.elementAt(0),
    ),
    RaisedButton(child: Text('yes'),
    onPressed: printmsg
    ),
    RaisedButton(child: Text('no'),
    onPressed: printmsg
    ),
    // ElevatedButton(onPressed: printmsg, 
    // child: Text('yep'),
    // ),
    // ),
  ],
  );
}

printmsg(){
  print('buttonpressed');
}