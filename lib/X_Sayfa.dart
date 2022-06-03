import 'package:flutter/material.dart';
import 'package:screen_transition/B_Sayfa.dart';
import 'package:screen_transition/Y_Sayfa.dart';

class Sayfa_X extends StatefulWidget {
  const Sayfa_X({Key? key}) : super(key: key);

  @override
  State<Sayfa_X> createState() => _Sayfa_XState();
}

class _Sayfa_XState extends State<Sayfa_X> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("SAYFA X",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
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