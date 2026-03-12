import 'dart:io';
import 'calc.dart';
import 'dart:math';

void main() {
  print("Grade calculator");
  print('');

  print("Enter scores (type 'enter' to submit):");

  while (true) {
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'enter') {
      break;
    }

    double? score = double.tryParse(input);

    if (score is! double) {
      print("Invalid! Score must be integer or decimal number.");
      scores.remove(score);
    }

    scores.add(input);
  }

  validateScore();

  print("Scores: $scores");

  getGrade();

  print('');
  stdout.write("type 'continue' to see average:");

  while (true) {
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'continue') {
      break;
    }
  }

  getAverage();

  print('');
  print("view range: ");
  getMaxValue();
  getMinValue();
  print("");
  countGrades();

  print("");
  print("type exit to terminate");
  while (true) {
    String? exit = stdin.readLineSync();
    if (exit == null || exit.toLowerCase() == 'exit') {
      print("program terminated");
      break;
    }
  }
}
