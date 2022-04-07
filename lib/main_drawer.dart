import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Profile.dart';
import 'SignIn.dart';
import 'Application.dart';
import 'Donate.dart';
import 'Contact.dart';
import 'main.dart';
import 'Hospital.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        child: Drawer(
            child: Column(children: <Widget>[
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.purple
                      ],
                    ),
                  ),
                  child: Center(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                        Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage('data:image/jpeg;base64,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'),
                                fit: BoxFit.fill,
                              ),
                            )),
                        Text('Parth Maheshwari',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                            )),
                        Text('Email: maheshwariparth234@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Text('Blood Group: O+',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ]))),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                  }),
              ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Apply for blood',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Application()));
                  }),
              ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Donate blood',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Donate()));
                  }),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              ListTile(
                  leading: Icon(Icons.local_hospital_outlined),
                  title: Text('Hospital near me',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hospitallist()));
                  }),
              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Contact Us',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
                  }),
              ListTile(
                  leading: Icon(Icons.login),
                  title: Text('Login',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_back),
                  title: Text('Logout',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  }),
            ])));
  }
}
