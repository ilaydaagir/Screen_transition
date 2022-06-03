import 'package:flutter/material.dart';

class Sayfa_Y extends StatefulWidget {
  const Sayfa_Y({Key? key}) : super(key: key);

  @override
  State<Sayfa_Y> createState() => _Sayfa_YState();
}

class _Sayfa_YState extends State<Sayfa_Y> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("SAYFA Y",style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
           Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Text("GERİ GİT",style: TextStyle(color: Colors.white,fontSize: 36),),
                    style: ElevatedButton.styleFrom(primary: Colors.purple
                    ),
                  )),

            ]
        ),
      ),
    );
  }
}