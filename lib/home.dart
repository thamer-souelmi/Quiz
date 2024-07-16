import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(

    child: Column(
      mainAxisSize: MainAxisSize.min,
    children: [
    Opacity(
        opacity: 0.5,
        child : Image.asset('assets/quiz-logo.png',
        width: 300,
          color: const Color.fromARGB(150,255,255,255),
        ),

    ),
    const SizedBox(height: 30,),
    Text('Learn Flutter '),
      const SizedBox(height: 30,),
    OutlinedButton.icon(onPressed: (){},icon:  Icon(Icons.arrow_right), label:
    
        Text('Start Quiz'))
    ],
    ),
    );
  }

}