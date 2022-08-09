import 'package:flutter/material.dart';
import 'package:projetclinique/Screens/page2.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(


        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 100,
            horizontal: 100,
          ),
          child: Container(
          width: double.infinity,
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                primary: Colors.pink,

                shape: StadiumBorder(),
                padding: EdgeInsets.all(13)),

            child: Text('Continuer'),
            onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loginScreen() ));
            },
          ),
        ),
        ),
      ),
    );
  }
}
