import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/questions_screen.dart';
import 'package:untitled1/data/question.dart';
import 'package:untitled1/results_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswer = [];
  //var  activeScreen = 'start-screen' ;
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }
void chosenanswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length==questions.length){

      setState(() {
        activeScreen='results-screen';
      });
    }
}
  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
   // String activeScreen = 'start-screen' ;
    // @override
    // void initState() {
    //   activeScreen =  'question-screen';
    //   super.initState();
    // }
    Widget screenWidget = Home(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget =  QuestionsScreen(onselect: chosenanswer);
    }
    // if (activeScreen == 'results-screen') {
    //   screenWidget =  ResultsScreen(chosenAnswer: selectedAnswer,);
    // }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }
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
              child: screenWidget,
              // activeScreen ==  'start-screen' // condition
              //     ? Home(switchScreen):
              // const QuestionsScreen(),
            )
        )
    );
  }
  
}