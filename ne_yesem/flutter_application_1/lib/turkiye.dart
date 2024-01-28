import 'package:flutter/material.dart';

class turkiye extends StatelessWidget {
  turkiye(BuildContext context);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('HOŞGELDİN'),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 107, 99, 114),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Ana Sayfa'),
                onTap: () {
               
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Ayarlar'),
                onTap: () {
           
                },
              ),
            ],
          ),
        ),
        
       appBar: AppBar(
        title:Center(
          
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            
            Text('NE YESEM',
            style: TextStyle(fontSize: 25,),),
          ],),),
    
       
      shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
  bottomLeft: Radius.circular(15),
  bottomRight: Radius.circular(15),
),

      ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 107, 99, 114),),
    );
  }
}