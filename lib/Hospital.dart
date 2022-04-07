import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  Hospital({Key? key,required this.name,required this.contact,required this.address}) : super(key: key);

  final String name;
  final String contact;
  final String address;

  Widget build(BuildContext context) {
    return Container(
        height: 180,
        padding: EdgeInsets.all(2),
        child: Card(
            child: Row(children: <Widget>[
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                        Text(this.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                        Text("Contact: " + this.contact, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Text("Address: " + this.address, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                      ])))
            ])));
  }
}

class Hospitallist extends StatefulWidget {
  const Hospitallist({Key? key}) : super(key: key);
  _HospitallistState createState() => _HospitallistState();
}

class _HospitallistState extends State<Hospitallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hospital Near Me'),
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
        body: Scrollbar(
            isAlwaysShown: true,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [
                      Color.fromRGBO(35, 7, 77, 1.0),
                      Color.fromRGBO(204, 83, 51, 1.0)
                    ])),
                child: ListView(shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0), children: <Widget>[
                  Hospital(
                    name: "Poonam Hospital",
                    contact: "9770223723",
                    address: "Kaushambi Rd, Near SBI, Devprayagam Colony, Jhalwa, Prayagraj, Uttar Pradesh 211012",
                  ),
                  Hospital(
                    name: "Phoenix Hospital",
                    contact: "073989 24535",
                    address: " General hospital 49/163A, Jawaharlal Nehru Rd",
                  ),
                  Hospital(
                    name: "Asha Hospital",
                    contact: "94529 79134",
                    address: "#89/276, Muir Rd, behind Circuit House, Rajapur, Prayagraj, Uttar Pradesh 211002",
                  ),
                  Hospital(
                    name: "Parvati Hospital Pvt Ltd",
                    contact: "9770223723",
                    address: "126, 50-A, Jawaharlal Nehru Rd, Tagore Town, Prayagraj, Uttar Pradesh 211002",
                  ),
                  Hospital(
                    name: "Bhola Hospital",
                    contact: "8541907205",
                    address: "Lowther Rd, Darbhanga Colony, George Town, Prayagraj, Uttar Pradesh 211002",
                  ),
                  Hospital(
                    name: "Shakuntala Hospital",
                    contact: "9304181973",
                    address: " 5/3-b, Tashkent Marg, Civil Lines, Prayagraj, Uttar Pradesh 211007",
                  ),
                  Hospital(
                    name: "Motilal Nehru Divisional Hospital",
                    contact: "8292576799",
                    address: "14, K.N, Dr KN Katju Rd, Nakhas Kohna, Miurabad, Prayagraj, Uttar Pradesh 211003",
                  ),
                ]))));
  }
}
