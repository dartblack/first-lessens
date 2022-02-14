import 'dart:math';

void main(List<String> arguments) {
  print(testPrimeNumber(11));

  Function pingPong = (String key) {
    return key == 'ping' ? 'pong' : 'ping';
  };
  print(pingPong('ping'));

  var num = repeatFunction(2, 2, (int times, int input) {
    return pow(input, times);
  });
  print(num);

  final studentOne = Student('First', 'Student', 100);
  print(studentOne);

  final studentTwo = Student('Test', 'Name', 50);
  print(studentTwo);
}

// 1 დავალება
bool testPrimeNumber(int number) {
  if (number == 1) {
    return true;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

/* 2 დავალება
 Function pingPong = (String key) {
    return key == 'ping' ? 'pong' : 'ping';
  };
  print(pingPong('ping'));
 */

/* 3 დავალება
 var sum = 0;
 for(var i =0; i<=5; i++){
    sum+=i;
 }
 sum = 15, 5 იტერაცია
 */

// 4 დავალება
int repeatFunction(int times, int input, Function task) {
  return task(times, input);
}
/*
 var num = repeatFunction(2, 2, (int times, int input) {
    return pow(input, times);
  });
  print(num);
 */

// 5 დავალება
String myString() => 'I am String';

// 6 დავალება
class Student {
  final String firstName;
  final String lastName;
  int grade = 0;

  Student(this.firstName, this.lastName, this.grade);

  @override
  String toString() {
    return 'firstName: $firstName\nlastName: $lastName\ngrade: $grade';
  }
}
/*
  final studentOne = Student('First', 'Student', 100);
  print(studentOne);

  final studentTwo = Student('Test', 'Name', 50);
  print(studentTwo)
 */
