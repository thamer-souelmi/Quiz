import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/data/question.dart';
import 'package:untitled1/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
   ResultsScreen({super.key,
     required this.chosenAnswer,
     required this.onRestart,
   });
  final List<String> chosenAnswer;
   final void Function() onRestart;

   List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];
    for(int i = 0;i< chosenAnswer.length;i++ ){
      summary.add({
        'question_index':i,
        "question": questions[i].question,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswer[i]
      });
    }
    return summary ;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData= getSummaryData();
    final numTotalQuestion = questions.length ;
    final correctQuestion = summaryData.where((data){
      return data['correct_answer']==data['user_answer'];
    }).length;
     return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctQuestion out of $numTotalQuestion questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
