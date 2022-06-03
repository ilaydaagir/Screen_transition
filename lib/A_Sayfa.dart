import 'package:flutter/material.dart';
import 'package:screen_transition/B_Sayfa.dart';

class Sayfa_A extends StatefulWidget {
  const Sayfa_A({Key? key}) : super(key: key);

  @override
  State<Sayfa_A> createState() => _Sayfa_AState();
}

class _Sayfa_AState extends State<Sayfa_A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("SAYFA A",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Sayfa_B()));
                    },
                    child: Text("GİT -> B",style: TextStyle(color: Colors.white,fontSize: 36),),
                    style: ElevatedButton.styleFrom(primary: Colors.purple
                    ),
                  )),

            ]
        ),
      ),
    );
  }
}
