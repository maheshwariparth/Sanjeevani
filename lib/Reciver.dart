import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_drawer.dart';

class ReceiverBox extends StatelessWidget {
  ReceiverBox({Key? key,required this.name,required this.bloodgroup,required this.contact,required this.address,required this.why_need_blood,required this.image}) : super(key: key);

  final String name;
  final String bloodgroup;
  final String contact;
  final String address;
  final String why_need_blood;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        height: 180,
        padding: EdgeInsets.all(2),
        child: Card(
            child: Row(children: <Widget>[
              new Image.network(this.image, height: 150.0, width: 150.0),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                        Text(this.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                        Text("Blood Group: " + this.bloodgroup, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Text("Contact: " + this.contact, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Text("Address: " + this.address, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Text("why needed blood: " + this.why_need_blood, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left)
                      ])))
            ])));
  }
}

class Receiver extends StatefulWidget {
  const Receiver({Key? key}) : super(key: key);
  _ReceiverState createState() => _ReceiverState();
}

class _ReceiverState extends State<Receiver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List of Person needed Blood'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.purple
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(child: MainDrawer()),
        body: Scrollbar(
            isAlwaysShown: true,
            child: ListView(shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0), children: <Widget>[
              ReceiverBox(
                name: "Somesh Tiwari",
                bloodgroup: "O+",
                contact: "97702XXXXX",
                address: "jammu",
                why_need_blood: " Anemia",
                image: 'https://images.news18.com/ibnlive/uploads/2021/07/1627040984_girl-suffering-from-paa-movie-syndrome-1200x800.png?impolicy=website&width=510&height=356',
              ),
              ReceiverBox(
                name: "Kuldeep Yadav",
                bloodgroup: "O+",
                contact: "62091XXXXX",
                address: "Bhagalpur",
                why_need_blood: " blood lost due to accident",
                image: 'https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-sk0rrgua2p3h3j1p92lhqo6co3-20170819130900.Medi.jpeg',
              ),
              ReceiverBox(
                name: "Jayesh Battu",
                bloodgroup: "O+",
                contact: "+91 88398 XXXXX",
                address: "Khandwa",
                why_need_blood: " Hemophilia",
                image: 'https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg',
              ),
              ReceiverBox(
                name: "Harsh Soni",
                bloodgroup: "O+",
                contact: "9770223723",
                address: "bhilai",
                why_need_blood: " Leukocytosis",
                image: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/12AF/production/_122638740_sullideals.jpg',
              ),
              ReceiverBox(name: "Suhani Patel", bloodgroup: "O+", contact: "85419XXXXX", address: "Dhanbad", why_need_blood: " Polycythemia vera", image: 'https://www.shethepeople.tv/wp-content/uploads/2020/04/Haley-Shapley.jpg'),
              ReceiverBox(
                name: "Sumi Kharone",
                bloodgroup: "O+",
                contact: "9304181973",
                address: "Mumbai",
                why_need_blood: " Sickle cell disease",
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzau7tEkZ-6Cyp9sCUQNez7uYIglvTnCJ9DA&usqp=CAU',
              ),
              ReceiverBox(
                name: "Shivangi Singh",
                bloodgroup: "O+",
                contact: "8292576799",
                address: "Bhilai",
                why_need_blood: " Thalassemia",
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKvTNLM7QE1FNiMXNe5vhMbkfbAe-87bIyVg&usqp=CAU',
              ),
            ])));
  }
}
