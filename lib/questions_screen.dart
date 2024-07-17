import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled1/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key, required this.onselect});
  final void Function(String answer) onselect;
  @override
  State<StatefulWidget> createState() {
return _QuestionScreen() ;  }

}
class _QuestionScreen extends State<QuestionsScreen>{
  var currentQuestionIndex = 0 ;
  void answerQuestion(String answer) {
    widget.onselect(answer);
    setState(() {
      currentQuestionIndex ++ ;
    });

}
  @override
  Widget build( context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(30) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
               textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ... currentQuestion.getShuffledanswer().map((answer) =>AnswerButton(answerText: answer, onTap: (){
              answerQuestion(answer);
            }) ,),
            // AnswerButton(
            //   answerText: currentQuestion.response[0],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.response[1],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.response[2],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
