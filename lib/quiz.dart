import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}
class _QuizState extends State<Quiz>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        home : Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 78, 13, 151),
                    Color.fromARGB(255, 107, 15, 168)

                  ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
              child: const Home(),
            )
        )
    );
  }
  
}