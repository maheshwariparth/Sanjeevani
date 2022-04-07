import 'package:flutter/material.dart';
import 'Donors.dart';
import 'main_drawer.dart';
import 'Reciver.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text('Welcome'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.purple,
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(child: MainDrawer()),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(235, 44, 68, 1.0),
            ),
            child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                  Text(
                    '“Blood Donation Costs You Nothing, But It Can Mean The World To Someone In Need.”',
                    style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  new Image.network('https://github.com/maheshwariparth/Personal/blob/main/ezgif.com-gif-maker.gif?raw=true/main/ezgif.com-gif-maker.gif?raw=true', height: 320.0, width: 380.0),
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 70.0,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Donors(),
                          )),
                      color: Colors.white,
                      textColor: Colors.red,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Donors List',
                        style: TextStyle(fontSize: 25.0),
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
                            builder: (context) => Receiver(),
                          )),
                      color: Colors.white,
                      textColor: Colors.red,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        ' People needed blood',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  )
                ]))));
  }
}
