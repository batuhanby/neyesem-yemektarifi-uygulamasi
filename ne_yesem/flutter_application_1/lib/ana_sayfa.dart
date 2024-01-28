

// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flutter_application_1/almanya.dart';
import 'package:flutter_application_1/amerika.dart';
import 'package:flutter_application_1/ingiltere.dart';
import 'package:flutter_application_1/turkiye.dart';
import 'package:flutter_application_1/yunanistan.dart';



class anasayfa extends StatelessWidget {
 
  

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
          
      
        actions: [
          IconButton(icon: Icon(Icons.search),onPressed: () {
            
          },)
        ],
  title: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     Icon(Icons.restaurant_menu),
        
        Text(
          'NE YESEM',
          style: TextStyle(fontSize: 25),
        ),
      ],
   
    ),
  ),
  
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15),
    ),
  ),
  backgroundColor: Color.fromARGB(255, 107, 99, 114),
  centerTitle: true,


  
),



      body: SingleChildScrollView(
    child: Card(
     
 child: Container(
                  margin:
                      EdgeInsets.only(top: 15, bottom: 40, left: 5, right: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 164, 221).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 102, 54, 114),
                        blurRadius: 50, // soften the shadow
                        spreadRadius: 5, //extend the shadow
                        offset: Offset(
                          15.0, // Move to right 10  horizontally
                          15.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                  ),
  
  child: Column(
    
    
    children: <Widget>[

      SizedBox(height: 330,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context,index)=>Container(
          
          height: 210,
          width: 250,
          margin: const EdgeInsets.all(10),
          
          child: Center(
            child: ElevatedButton(child: const Text("merhaba"),onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 134, 78, 78),
            minimumSize: const Size(250, 400),
            primary: Color.fromARGB(255, 218, 208, 208),
            elevation:20,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
Radius.circular(40),
              ),
            ),
            
            ),
            
            ),
          ),
        ),

        
        ),
        
  ),
          SizedBox(height: 50),
         InkWell(
  onTap: () {
    turkiyeGecisi(context);
  },


  child:ClipRRect(
  borderRadius: BorderRadius.circular(40),
  child:Stack(
    children: [
      Image.asset('assets/resimler/turkish-food.jpg.webp', fit: BoxFit.fitWidth, width: 450, height: 170),
      Align(
        alignment: Alignment.center, // Metnin ortalanacağı hizalama
        child: Text(
          'TÜRKİYE',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lemon',
            fontSize: 45,
            shadows: [
              Shadow(
           
                blurRadius: 15,
                color: Color.fromARGB(255, 61, 59, 59),
                offset: Offset(4, 4),
              ),
            ],
          ),
        
        ),
        
      ),
      
    ],
  ),
),
         ),

      SizedBox(height: 30),
      InkWell(
  onTap: () {
    almanyagecisi(context);
  },

  child:ClipRRect(
   borderRadius:BorderRadius.circular(40),
  
  child: Stack(
    
    children: [
      Image.asset('assets/resimler/anlman-mutfagi.webp', fit: BoxFit.fitWidth, width: 450, height: 170,),
      Align(
        alignment: Alignment.center, // Metnin ortalanacağı hizalama
        child: Text(
          'ALMANYA',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontFamily: 'Lemon', fontSize: 45,shadows:[
            Shadow(blurRadius: 15,
            color: Color.fromARGB(255, 49, 47, 47),
            offset: Offset(4, 4),),
          ] ),
        ),
      ),
    ],
  ),
),
 ),

      SizedBox(height: 30),
      InkWell(
  onTap: () {
    amerikaGecisi(context);
  },

  child:ClipRRect(
   borderRadius:BorderRadius.circular(40),
  
  child: Stack(
    
    children: [
      Image.asset('assets/resimler/usa-foods.webp', fit: BoxFit.fitWidth, width: 450, height: 170,),
      Align(
        alignment: Alignment.center, // Metnin ortalanacağı hizalama
        child: Text(
          'AMERİKA',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontFamily: 'Lemon', fontSize: 45,shadows:[
            Shadow(blurRadius: 15,
            color: Color.fromARGB(255, 49, 47, 47),
            offset: Offset(4, 4),),
          ] ),
        ),
      ),
    ],
  ),
),
 ),
      SizedBox(height: 30,),
      InkWell(
  onTap: () {
    yunanistanGecisi(context);
  },

  child:ClipRRect(
   borderRadius:BorderRadius.circular(40),
  
  child: Stack(
    
    children: [
      Image.asset('assets/resimler/yunana-mutfagi.webp', fit: BoxFit.fitWidth, width: 450, height: 170,),
      Align(
        alignment: Alignment.center, // Metnin ortalanacağı hizalama
        child: Text(
          'YUNANİSTAN',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontFamily: 'Lemon', fontSize: 45,shadows:[
            Shadow(blurRadius: 15,
            color: Color.fromARGB(255, 49, 47, 47),
            offset: Offset(4, 4),),
          ] ),
        ),
      ),
    ],
  ),
),
 ),

      SizedBox(height: 30,),
      InkWell(
  onTap: () {
   ingiltereGecisi(context);
  },

  child:ClipRRect(
   borderRadius:BorderRadius.circular(40),
  
  child: Stack(
    
    children: [
      Image.asset('assets/resimler/Ingilterede-Ne-Yenir.webp', fit: BoxFit.fitWidth, width: 450, height: 170,),
      Align(
        alignment: Alignment.center, // Metnin ortalanacağı hizalama
        child: Text(
          'İNGİLTERE',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontFamily: 'Lemon', fontSize: 45,shadows:[
            Shadow(blurRadius: 15,
            color: Color.fromARGB(255, 49, 47, 47),
            offset: Offset(4, 4),),
          ] ),
        ),
      ),
    ],
  ),
),
 ),
        
      ],
        
      ),
      ),
      ),
     ),
    );

    
     
  } void turkiyeGecisi(BuildContext context) {
  MaterialPageRoute turkiyePageRoute = MaterialPageRoute(builder: (BuildContext context) {
    return turkiye(context); // turkiye() widget'ını çağırın
  });
  Navigator.push(context, turkiyePageRoute);
}
 void almanyagecisi(BuildContext context) {
  MaterialPageRoute turkiyePageRoute = MaterialPageRoute(builder: (BuildContext context) {
    return almanya(context); // turkiye() widget'ını çağırın
  });
  Navigator.push(context, turkiyePageRoute);
  }
  void amerikaGecisi(BuildContext context) {
  MaterialPageRoute turkiyePageRoute = MaterialPageRoute(builder: (BuildContext context) {
    return amerika(context); // turkiye() widget'ını çağırın
  });
  Navigator.push(context, turkiyePageRoute);
  }
  void yunanistanGecisi(BuildContext context) {
  MaterialPageRoute turkiyePageRoute = MaterialPageRoute(builder: (BuildContext context) {
    return yunanistan(context); // turkiye() widget'ını çağırın
  });
  Navigator.push(context, turkiyePageRoute);
  }
  void ingiltereGecisi(BuildContext context) {
  MaterialPageRoute turkiyePageRoute = MaterialPageRoute(builder: (BuildContext context) {
    return ingiltere(context); // turkiye() widget'ını çağırın
  });
  Navigator.push(context, turkiyePageRoute);
  }

  
  
}
