import 'package:flutter/material.dart';
import 'package:screen_transition/A_Sayfa.dart';
import 'package:screen_transition/X_Sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("ANASAYFA",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Sayfa_A()));
                },
                child: Text("GİT -> A",style: TextStyle(color: Colors.white,fontSize: 36),),
                style: ElevatedButton.styleFrom(primary: Colors.purple
                ),
            )),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sayfa_X()));
                },
                child: Text("GİT -> X",style: TextStyle(color: Colors.white,fontSize: 36),),
                style: ElevatedButton.styleFrom(primary: Colors.purple),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
