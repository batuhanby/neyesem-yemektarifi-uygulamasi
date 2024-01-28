import 'package:flutter/material.dart';
import 'package:flutter_application_1/ana_sayfa.dart';

class kullanicigirisi extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
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
        
        
        body: Container(
 
 child: Container(
 
                  margin:
                      EdgeInsets.only(top: 75, bottom: 100, left: 20, right: 20),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 164, 221).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(25),
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




          
          child: ListView(
            
           padding: EdgeInsets.only(top: 90,bottom: 20,left: 10,right: 20),
            children: [
            
              TextField(

                 style: TextStyle(
                  color: Colors.black
                 ),
                maxLines: 1,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(

              
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  labelText: "kullanıcı adı",
                  labelStyle: TextStyle(color: Color.fromARGB(255, 12, 12, 12)),
                  filled: true,
                  
                  

                ),

              ),
              SizedBox(height: 30,),
              TextField(
                maxLines: 1,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),  
                 
                  ),
                  labelText: "şifre", 
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 12, 12, 12)),
             
                  filled: true,
                  
                ),
              ),
              SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    MaterialButton(child:Text('ÜYE OL',),onPressed: () {
      
    },),
    
    MaterialButton(child:Text('ŞİFREMİ UNUTTUM'),onPressed: () {
      
    },),
  ], 
    
  
),

              SizedBox(height: 5,),
              ElevatedButton(
  style: ElevatedButton.styleFrom(
    minimumSize: Size(150, 50),
   backgroundColor: Color.fromARGB(255, 164, 102, 175),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.10), 
    ),
  ),
  onPressed: () {
    anasayfayaGecis(context);
  },
  child: Text(
    "Giriş"
    
  ),
),

            ],
          ),
        ),
        ),
    );
  }
  void anasayfayaGecis(BuildContext context){
    MaterialPageRoute sayfaYolu =MaterialPageRoute(builder: (BuildContext context){
return anasayfa();
    },
    );
    Navigator.push(context, sayfaYolu);

  }
}

