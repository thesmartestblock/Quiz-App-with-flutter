class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffle() {
    var copy = List.of(answers);
    copy.shuffle();
    return copy;
  }
}
