/*
Ar G Ho, HSTU, CSE 17.
youtube.com/iargho(39K subs)
youtube.com/thearghost(9K subs)
*/

studentGrade(String name, int Score) {
  if (Score >= 90 && Score <= 100) {
    return "A";
  } else if (Score >= 80 && Score <= 89) {
    return "B";
  } else if (Score >= 70 && Score <= 79) {
    return "C";
  } else if (Score >= 60 && Score <= 69) {
    return "D";
  } else if (Score >= 0 && Score <= 59) {
    return "F";
  } else {
    return "Invalid Grade";
  }
} //studetGrate function ends

main() {
  String studentName = "Anupam Roy Argho";
  int testScore = 59;
  String grade = studentGrade(studentName, testScore);
  print("$studentName's grade: $grade");
}
