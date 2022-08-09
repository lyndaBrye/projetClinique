import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Cardscreens extends StatefulWidget {
  const Cardscreens({Key? key}) : super(key: key);

  @override
  State<Cardscreens> createState() => _CardscreensState();
}

class _CardscreensState extends State<Cardscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.pink,
        title: Text('Détails sur la struture médicale'),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Container(child:
      GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ),
          children: [
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front:ClinicalCard(title1: 'Services',) ,
              back:ClinicalCarddetails(title: '',) ,
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front:ClinicalCard(title1: 'Itineraire',) ,
              back:ClinicalCarddetails(title: '',) ,
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front:ClinicalCard(title1: 'Assurances',) ,
              back:ClinicalCarddetails(title: '',) ,
            ),
            GestureDetector(
                onTap: () {
                },
                child: ClinicalCard(title1: 'Regardez le Map'))

          ],



      ) ,),
    );
  }
}
class ClinicalCarddetails extends StatelessWidget {
  final String title;
  ClinicalCarddetails({required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Center(
        child: Center(
          child: Text(title,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold
            ),),
        )
      ));
  }
}
class ClinicalCard extends StatelessWidget {
  final String title1;
  const ClinicalCard({ required this.title1});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pinkAccent,
      elevation:2 ,
      child: Center(
        child: Text(title1,
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold
          ),

        ),


      )
    );
  }
}
