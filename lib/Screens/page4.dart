import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetclinique/Screens/navDrawer.dart';
import 'package:projetclinique/Screens/page5.dart';

import 'deleyedScreen.dart';
class pageGarde extends StatefulWidget {
  const pageGarde({Key? key}) : super(key: key);

  @override
  State<pageGarde> createState() => _pageGardeState();
}

class _pageGardeState extends State<pageGarde> {

  String dropdownvalue = 'Item 1';

  var items = [



    'Item 1',
    'Treichville',
    'Abobo',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(

          drawer: NavDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.pink,
            titleSpacing: 0.0,

            elevation: 0.0 ,
            title: Text('Accueil', style: TextStyle(
              color: Colors.white,
            ),),

          ),
          body: Center(

            child: SingleChildScrollView(

              padding: EdgeInsets.symmetric(
                  vertical: 100.0, horizontal: 100.0),

              child:  Column(

// crossA.... permet de aire un alignement start designe au debut de la ligne
                crossAxisAlignment:CrossAxisAlignment.center,
// chidren est une balise mere qui peut contenir plusieurs autres elements

                children: [
                  //Richtext permet d ecrire des texts et contient ds balises qui permettront changer les couleurs, les tailles

//Debut de mon Formulaire
                  DelayedAnimation(
                    delay: 1500,
                    child: Container(
                      height: 170,
                      child: RichText(
                        text:
                        TextSpan(
                          text: 'structures medicales proche de chez vous! \n'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  Form(
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Point de repere',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text('Choisissez le service par lequel vous etes interesse', style:TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,

                        ),)
                        , SizedBox(
                          height: 10.0,
                        ),

                        DropdownButton(
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),SizedBox(
                          height: 30.0,
                        ),


                        Text('Assurance medicales', style:TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,

                        ),)
                        , SizedBox(
                          height: 10.0,
                        ),
                        DropdownButton(
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        //Bouton de validation
                        SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(

                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink,

                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(13)),

                          child: Text('Rechercher'),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Viewscreen()));
                          },
                        ),
                      ],
                    )
                    ,
                  ),
                ],
              )  ,
            ),
          ),
        ));
  }

}
