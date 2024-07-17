class QuizQuestion {
  const QuizQuestion(this.question,this.answer);
  final String question ;
  final List<String> answer ;
  List<String> getShuffledanswer(){
    final shuffledlist = List.of(answer);
    shuffledlist.shuffle();
    return shuffledlist ;
  }
}