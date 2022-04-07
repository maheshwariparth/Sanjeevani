import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'SignIn.dart';
import 'SignUp.dart';

void main() => runApp(VardanApp());

class VardanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sanjeevani',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                    Colors.red
                  ],
                  radius: 0.60,
                )),
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                Text('Sanjeevani',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(10, 10), blurRadius: 10.0)
                      ],
                    )),
                new Image.network('https://nvlupin.blob.core.windows.net/images/van/CAHA/CAHA/1/87023/images/Donate-Blood/blood_transfusion_as4.gif', height: 300.0, width: 300.0),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 70.0,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          )),
                      child: Text('SignIn', style: TextStyle(fontSize: 30.0, color: Colors.white)),
                      textColor: Colors.white,
                      color: Color.fromRGBO(13, 57, 158, 1.0),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  ButtonTheme(
                      minWidth: 160.0,
                      height: 70.0,
                      child: RaisedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            )),
                        child: Text('SignUp', style: TextStyle(fontSize: 30.0, color: Colors.white)),
                        textColor: Colors.white,
                        color: Color.fromRGBO(13, 57, 158, 1.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ))
                ])
              ]),
            )));
  }
}
