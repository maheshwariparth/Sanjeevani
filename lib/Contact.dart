import 'package:flutter/material.dart';
import 'Profile.dart';

class Contact extends StatelessWidget {
  Contact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
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
        body: Container(
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
                      child: const Text(
                        'Contact Us',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text('Contact: +91 999-999-8888', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text('Email: jeevanrekha@gmail.com', style: TextStyle(fontSize: 16.0, color: Colors.white)),
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
                        hintText: 'Message',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.black,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          child: const Text('Submit'),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(title: Text('Message Submitted!!'), actions: [
                                  TextButton(
                                      child: Text('Ok'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                                      })
                                ]));
                          })),
                ]))));
  }
}
