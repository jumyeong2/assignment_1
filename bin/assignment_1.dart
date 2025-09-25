import 'package:assignment_1/assignment_1.dart' as assignment_1;

void main() {
  int score = 84;

  String grade;
  if (score >= 90 && score <= 100) {
    grade = 'A등급';
  } else if (score >= 80 && score <= 89) {
    grade = 'B등급';
  } else {
    grade = 'C등급';
  }

  print('이 학생의 점수는 $score이며, 등급은 $grade입니다!');
}
