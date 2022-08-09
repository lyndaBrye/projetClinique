import 'package:flutter/material.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink,
      child: ListView(

        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(


            child: Text(
              'Menu',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25),
            ),

          ),

          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profil',style: TextStyle(
                color: Colors.white,
                fontSize: 25),),
            onTap: () => {
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Parametres',style: TextStyle(
                color: Colors.white,
                fontSize: 25),),
            onTap: () => {
            },
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text('Informations',style: TextStyle(
                color: Colors.white,
                fontSize: 25),),
            onTap: () => {
            },
          ),


          ListTile(
            leading: Icon(Icons.medical_services_outlined),
            title: Text('Services',style: TextStyle(
                color: Colors.white,
                fontSize: 25),),
            onTap: () => {

            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Deconnexion',style: TextStyle(
                color: Colors.white,
                fontSize: 25),),
            onTap: () => {
            },
          ),
        ],
      ),
    );
  }
}