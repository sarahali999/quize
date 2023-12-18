import 'answerr.dart';

class QuizApp {
  int _questionIndex = 0;

  List<Question> _questions = [
    Question(questionText: 'Is Dart a programming language?', questionAnswer: true),
    Question(questionText: 'Is Python statically typed?', questionAnswer: false),
    Question(questionText: 'Is Flutter developed by Google?', questionAnswer: true),
    Question(questionText: 'Is JavaScript a compiled language?', questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionIndex < _questions.length - 1) {
      _questionIndex++;
    }
  }

  String getCurrentQuestionText() {
    return _questions[_questionIndex].text;
  }

  bool getCurrentQuestionAnswer() {
    return _questions[_questionIndex].answer;
  }
  bool iffinish(){
    if(_questionIndex>=_questions.length +1){
      return true;

    }else {
      return false;
    }
  }
  void reset (){
    _questionIndex=0;
  }
}
