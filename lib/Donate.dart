import 'package:flutter/material.dart';
import 'main_drawer.dart';
import 'Profile.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  static const String _title = 'Donate Blood';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
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
        body: Donateblood(),
      ),
    );
  }
}

class Donateblood extends StatefulWidget {
  const Donateblood({Key? key}) : super(key: key);

  @override
  State<Donateblood> createState() => _DonatebloodState();
}

class _DonatebloodState extends State<Donateblood> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [
              Color.fromRGBO(35, 7, 77, 1.0),
              Color.fromRGBO(204, 83, 51, 1.0)
            ])),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Be a hero, Donate Blood',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 35.0),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'User Name',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Blood Group',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                child: ButtonTheme(
                    minWidth: 160.0,
                    height: 70.0,
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: const Text('Apply Now'),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(title: Text('Application Submitted!!'), content: Text('Thankyou for filling the application. Your blood will save lives. We will contact you soon.'), actions: [
                                TextButton(
                                    child: Text('Ok'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                                    })
                              ]));
                        })),
              )
            ])));
  }
}
