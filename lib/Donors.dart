import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonorBox extends StatelessWidget {
  DonorBox({Key? key,required this.name,required this.bloodgroup,required this.contact,required this.address,required this.image}) : super(key: key);

  final String name;
  final String bloodgroup;
  final String contact;
  final String address;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        height: 180,
        padding: EdgeInsets.all(2),
        child: Card(
            child: Row(children: <Widget>[
              new Image.network(this.image, height: 180.0, width: 180.0),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                        Text(this.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                        Text("Blood Group: " + this.bloodgroup, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Text("Contact: " + this.contact, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Text("Address: " + this.address, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                      ])))
            ])));
  }
}

class Donors extends StatefulWidget {
  const Donors({Key? key}) : super(key: key);
  _ReciverState createState() => _ReciverState();
}

class _ReciverState extends State<Donors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List of Donors'),
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
            child: ListView(shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0), children: <Widget>[
              DonorBox(
                name: "Parth Maheshwari",
                bloodgroup: "O+",
                contact: "9770223723",
                address: "Khandwa",
                image: 'https://i.guim.co.uk/img/media/33c508e9f0c30a90df363e3b5cc3925f0b70f5b6/0_0_3600_2159/master/3600.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6c1e047f1edc4a54f1770458201ed69e',
              ),
              DonorBox(
                name: "Sneha Choudhary",
                bloodgroup: "O+",
                contact: "6209191986",
                address: "Bhagalpur",
                image: 'http://www.woman-themovie.org/wp-content/uploads/2020/02/CHAUD_Celine-W_78-FRANCE_24-FACIES-LVMH-CALLIGARO_Sandra-V.jpg',
              ),
              DonorBox(
                name: "Jinam Jain",
                bloodgroup: "B+",
                contact: "+91 88398 48155",
                address: "Khandwa",
                image: 'https://sp-ao.shortpixel.ai/client/to_avif,q_lossy,ret_img/https://www.campanarmotorbox.com/tienda/wp-content/uploads/person-5.jpg',
              ),
              DonorBox(
                name: "Harsh Sharma",
                bloodgroup: "A-",
                contact: "9770223723",
                address: "bhilai",
                image: 'https://sp-ao.shortpixel.ai/client/to_avif,q_lossy,ret_img/https://www.campanarmotorbox.com/tienda/wp-content/uploads/person-2.jpg',
              ),
              DonorBox(
                name: "Nidhi Bhadaradwaj",
                bloodgroup: "B+",
                contact: "8541907205",
                address: "Dhanbad",
                image: 'https://post.healthline.com/wp-content/uploads/2020/08/portrait-athlete-serious-african-american-woman-732x549-thumbnail-732x549.jpg',
              ),
              DonorBox(
                name: "Nitya Gupta",
                bloodgroup: "AB+",
                contact: "9304181973",
                address: "Mumbai",
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEtgC0a03h2NC__pAjxiLSIRN3kJF46qTKpQ&usqp=CAU',
              ),
              DonorBox(
                name: "Shivani Pal",
                bloodgroup: "B-",
                contact: "8292576799",
                address: "Bhilai",
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9-846lPaZVDgy8kofUQo5R11Jf9ytcLptaw&usqp=CAU',
              ),
            ])));
  }
}
