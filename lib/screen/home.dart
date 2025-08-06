
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  createAppBar(String message){
    return AppBar(
      backgroundColor:Colors.transparent,
      title: Text(message,
      style: TextStyle(color: Colors.white),),

        actions:[
            Padding(
                padding:EdgeInsets.only(right: 10),
                child: Icon(Icons.settings,color: Colors.white)),
          ],
        );

  }
  @override
  SafeArea build(BuildContext context) {
    return SafeArea(

      child: Container(
        decoration: BoxDecoration(
          gradient:
            LinearGradient(colors: [
              Colors.black,
              Colors.green,
            ], begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
        child:  Column(children: [
          createAppBar('Good Morning',),
        ],),
      )
    );
  }
}




