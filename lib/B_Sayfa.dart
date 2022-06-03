import 'package:flutter/material.dart';
import 'package:screen_transition/Y_Sayfa.dart';

class Sayfa_B extends StatefulWidget {
  const Sayfa_B({Key? key}) : super(key: key);

  @override
  State<Sayfa_B> createState() => _Sayfa_BState();
}

class _Sayfa_BState extends State<Sayfa_B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("SAYFA B",style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Sayfa_Y()));
                    },
                    child: Text("GİT -> Y",style: TextStyle(color: Colors.white,fontSize: 36),),
                    style: ElevatedButton.styleFrom(primary: Colors.purple
                    ),
                  )),

            ]
        ),
      ),
    );
  }
}