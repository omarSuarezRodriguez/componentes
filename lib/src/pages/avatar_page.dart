import 'package:flutter/material.dart';



class AvatarPage extends StatelessWidget {

  // static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://datosdefamosos.com/wp-content/uploads/2019/09/Stan_Lee-773x1024.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
          

        ],
      ),

      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
         image: NetworkImage('https://mexico.as.com/mexico/imagenes/2019/11/12/tikitakas/1573575489_510774_1573575583_noticia_normal.jpg'),
         fadeInDuration: Duration(milliseconds: 200),
         ),
      ),
    );
  }
}