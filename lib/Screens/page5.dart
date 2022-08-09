import 'package:flutter/material.dart';
import 'package:projetclinique/Screens/cardScreen.dart';
import 'package:projetclinique/Screens/navDrawer.dart';
class Viewscreen extends StatefulWidget {
  const Viewscreen({Key? key}) : super(key: key);

  @override
  State<Viewscreen> createState() => _ViewscreenState();
}

class _ViewscreenState extends State<Viewscreen> {
  bool isSearching= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:
        !isSearching

            ? Text('Structure medicales')

            : TextField(

          onChanged: (value){
          },
          decoration: InputDecoration(
              hintText: 'search',
              icon:
              Icon(
                Icons.search,
                color: Colors.white,)
          ),
        ),

        backgroundColor: Colors.pink,

        actions: <Widget>[
          isSearching?

          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){

              setState((){
                this.isSearching=false;
              });
            }, )
              :IconButton( icon: Icon(
              Icons.search),
            onPressed: (){setState((){this.isSearching=true;});},
          )
        ],
      ),
      drawer: NavDrawer(),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
             GestureDetector(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cardscreens()
                 ));
               },
               child: Card(
                   elevation: 10.0,
                   color: Colors.white,
                   child: Padding(
                     padding: EdgeInsets.symmetric(
                         vertical: 10.0, horizontal: 10.0),
                     child:
                     Text(
                       style:
                       TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 10.0
                       ),'Bonour',),
                   )
               ),

             ),GestureDetector(
              child: Card(
                  elevation: 10.0,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child:
                    Text(
                      style:
                      TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0
                      ),'',),
                  )
              ),

            ),GestureDetector(
              child:Card(
                  elevation: 10.0,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child:
                    Text(
                      style:
                      TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0
                      ),'',),
                  )
              ),

            ),



          ],
        ),
      ),
    );
  }
}
