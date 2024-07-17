import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget{
  const Home(this.startQuiz ,{super.key});
  final void Function() startQuiz ;
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
    Text('Learn Flutter ',
    style: GoogleFonts.lato(
      color: Colors.amber,
      fontSize: 24
    ),),
      const SizedBox(height: 30,),
    OutlinedButton.icon(onPressed:startQuiz ,icon:  Icon(Icons.arrow_right), label:
    
        Text('Start Quiz'))
    ],
    ),
    );
  }

}