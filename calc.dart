List<String> scores = [];

void validateScore() {
  if (scores == '') {
    print("type in the scores");
  }

  for (var s in scores) {
    double? score = double.tryParse(s);

    if (score == null) {
      print("invalid! Try again");
    } else if (score < 0 || score > 100) {
      print("score must be between 0 - 100");
    }
  }
}

List<String> grades = [];

void getGrade() {
  String? grade;

  for (var s in scores) {
    double? score = double.tryParse(s);
    if (score != null && score >= 90) {
      grade = "A";
    } else if (score != null && score >= 80) {
      grade = "B";
    } else if (score != null && score >= 70) {
      grade = "C";
    } else if (score != null && score >= 60) {
      grade = "D";
    } else {
      grade = "F";
    }

    grades.add(grade);
  }

  print("Grades: ${grades}");
}

void getAverage() {
  double average = 0;
  double sum = 0;

  for (var s in scores) {
    double? score = double.tryParse(s);
    if (score != null) {
      sum += score;
    }
  }
  average = sum / scores.length;
  print("Average score: ${average}");
}

void getMaxValue() {
  double? maxScore = 0;
  for (var s in scores) {
    double? score = double.tryParse(s);

    if (score == null) continue;
    if (maxScore == null || score > maxScore) {
      maxScore = score;
    }
  }
  print("Max score: $maxScore");
}

void getMinValue() {
  double? minScore;
  for (var s in scores) {
    double? score = double.tryParse(s);

    if (score == null) continue;
    if (minScore == null || score < minScore) {
      minScore = score;
    }
  }
  print("Min score: $minScore");
}

void countGrades() {
  Map<String, int> gradeCount = {"A": 0, "B": 0, "C": 0, "D": 0, "F": 0};

  for (var grade in grades) {
    gradeCount[grade] = gradeCount[grade]! + 1;
  }

  print("\nGrade distribution:");
  gradeCount.forEach((grade, count) {
    if (count > 1) {
      print("$grade: $count students");
    } else {
      print("$grade: $count student");
    }
  });
}
