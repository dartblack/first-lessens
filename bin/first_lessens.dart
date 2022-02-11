import 'dart:math';

void main(List<String> arguments) {
  // 1 დავალება
  const double raiting1 = 2;
  const double raiting2 = 14;
  const double raiting3 = 37;
  const averageRating = (raiting1 + raiting2 + raiting3) / 3;
  print(averageRating);

  // 2 დავალება
  const double a = 2;
  const double b = 14;
  const double c = 37;
  var root1 = (-b + sqrt(pow(2, b) - 4 * a * c)) / (2 * a);
  var root2 = (-b - sqrt(pow(2, b) - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);

  // 3 დავალება
  /**
   * const name = ‘Flutter’;
   * name+= ‘Framework’;
   */
  // არასწორი ფრჩხილები, const ცვლადის გადაწერა არ შეიძლება

  // 4 დავალება
  const value = 10 / 2;
  print(value.runtimeType);

  // 5 დავალება
  /**
      const firstName = 'Anne’';
      if (firstName == ‘Anne’) { //არასწორი ფრჩხილი
      const lastName = 'Smith';
      } else if (firstName == 'Ray') {
      const lastName = 'Boolean';
      }
      final fullName = firstName + ' ' + lastName; // lastName ზე აქ წვდომა არ გვაქვს
   */

  // 6 დავალება
  print(true && true); // true
  print(false || false); // false
  print((true && 1 != 2) || (5 > 3 && 78 < 1)); // true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); // true
}
